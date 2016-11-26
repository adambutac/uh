#!/usr/bin/python

import time
import fnmatch
import re
import os
import subprocess
import distutils.util
import sys

PROJECTNAME="melange"

def getKey():
	import termios, fcntl, sys, os
	fd = sys.stdin.fileno()
	
	oldterm = termios.tcgetattr(fd)
	newattr = termios.tcgetattr(fd)
	newattr[3] = newattr[3] & ~termios.ICANON & ~termios.ECHO
	termios.tcsetattr(fd, termios.TCSANOW, newattr)
	
	oldflags = fcntl.fcntl(fd, fcntl.F_GETFL)
	fcntl.fcntl(fd, fcntl.F_SETFL, oldflags | os.O_NONBLOCK)
	
	try:
    		while 1:
        		try:
     		       		c = sys.stdin.read(1)
       		     		return c
        		except IOError: pass
	finally:
    		termios.tcsetattr(fd, termios.TCSAFLUSH, oldterm)
    		fcntl.fcntl(fd, fcntl.F_SETFL, oldflags)
	
def proceed():
	inputchar = getKey()
	if (inputchar == '\n') or (inputchar == 'y') or (inputchar == 'Y'):
		return True
	else:
		return False

def getTerminalWidth():
	rows, columns = os.popen('stty size', 'r').read().split()
	return int(columns)

def printhr():
	print "-"*getTerminalWidth()

def printdhr():
	print "="*getTerminalWidth()

def prettyprint(tabs,string):
	words=string.split()
	width = getTerminalWidth()
	x = 1
	print tabs,
	for word in words:
		if ((x + len(word)) > width-2):
			print ""
			print tabs,
			x = 0
		print word,
		x = x + len(word)+1
	print ""
	return
		

def getAllProjectVersionDirectoryNames(projectname): 
	list = []
	for file in os.listdir('.'):
		if (fnmatch.fnmatch(file, projectname+'_v*') and os.path.isdir(file)):
			list.append(file)
	return list

def getFileList(directory, pattern):
	sourcefiles = subprocess.check_output(["find",directory,"-name",pattern])
	return sourcefiles.split()

def OpenMPUsedInFile(file):
	try:
		lines = subprocess.check_output(["grep","pragma",file]).splitlines()
	except subprocess.CalledProcessError:
		return False

	for line in lines:
		if (not isCommentedOut(line)):
 			return True
	return False


def getOpenMPSetNumThreadOccurences(version):
	sourcefiles = getFileList(version,"*.c") + getFileList(version,"*.cpp") + getFileList(version,"*.C") + getFileList(version,"*.h")

	lines_in_files = []

	OpenMPUsed = False

	for file in sourcefiles:
		if OpenMPUsedInFile(file):
			OpenMPUsed = True
			try:
				lines = subprocess.check_output(["grep","omp_set_num_threads",file]).splitlines()
				for line in lines:
					lines_in_files.append([line,file])
			except subprocess.CalledProcessError:
				pass
	return (OpenMPUsed,lines_in_files)

# This is a lame function that catches lines that are obviously commented out
def isCommentedOut(line):
	if (not (re.match(r'[\t ]*//',line) == None)):
		return True
	if (not (re.match(r'[\t ]*/\*',line) == None)):
		return True
	return False

def getNumberThreadsUsed(version):
	numthreads_list =  []
	numthreads_in_files = []

	(OpenMPUsed,lines_in_files) = getOpenMPSetNumThreadOccurences(version)
	if OpenMPUsed:
		for [line,file] in lines_in_files:
			if (not isCommentedOut(line)):
				# remove beginning of line
				line =  re.sub(r'.*omp_set_num_threads\( *','',line)
				# remove end of line
				num_threads =  re.sub(r' *\).*','',line)
				# Add
				if (not (num_threads in numthreads_list)):
					numthreads_list.append(num_threads)
					numthreads_in_files.append([num_threads,file])

	return (OpenMPUsed,numthreads_in_files)


def printNumberOfThreads(version):
	(OpenMPUsed, numthreads_in_files) = getNumberThreadsUsed(version)

	print version+":"
	if (not OpenMPUsed): 
		print "\tOpenMP is not used in this version."
		return

	if (len(numthreads_in_files) == 0):
		prettyprint("\t","omp_set_num_threads() is not called anywhere and the code uses OpenMP, so the it will use as many threads as (logical) cores on the machine.")
		return

	allstandard = True
	for (numthreads,file) in numthreads_in_files:
		if (numthreads != "NUM_THREADS"):
			prettyprint("\t",file+": omp_set_num_threads("+numthreads+")")
			allstandard = False
	if (allstandard):
		prettyprint("\t","All calls are omp_set_num_threads(NUM_THREADS)")


def timeVersionWithThreads(version, num_threads):
	# Chdir to the version
	os.chdir(version)
	# Do a make clean
	if (os.system("make clean 1> /dev/null 2> /dev/null") != 0):
		print version+": Can't 'make clean'... aborting!\n";
		exit(0)
	# Set the NUM_THREADS environment variable
	os.environ['NUM_THREADS'] = str(num_threads)
	#os.system("echo $NUM_THREADS")
	# Build the app
	if (os.system("make --environment-overrides 1> /dev/null 2> /dev/null") != 0):
		print version+": Can't 'make'... aborting!\n";
		exit(0)

	# Check that the output works
	checkApplicationCorrectness(version)

	# Time the app some number of times
	numTrials = 2
	start = time.time()
	for trial in range(numTrials): 
		os.system("make run 1> /dev/null 2> /dev/null")
	average = 1.0*(time.time() - start) / numTrials
	os.chdir("..")
	return average

def checkApplicationCorrectness(version):
	# Not doing it
	return


###########################################################
###########################################################
###########################################################


all_versions =  getAllProjectVersionDirectoryNames(PROJECTNAME)
if (len(all_versions) < 1):
	print "NO code versions found... aborting!\n"
	exit(0)


# Print information about calls to omp_num_threads()
printdhr()
print "OpenMP SANITY CHECK:"
printhr()
prettyprint("","Below are the places in which omp_set_num_threads() is called with an argument OTHER than NUM_THREADS. Your code will be tested by setting NUM_THREADS to various values.  This is ok if you purposely don't want to use the specified maximum number of threads (e.g., a fixed number, some fraction of NUM_THREADS)...")
print ""
for version in all_versions:
	printNumberOfThreads(version)
	print ""

# Compile the versions
printdhr

print "Proceed with the timing? [Y|n]"
if not proceed():
	print "Bye!\n"
	exit(0)

num_threads = [1,2,4,8,16]
print "Enter a comma-separated list of threads (default is",num_threads,"):",
thread_list = raw_input()
if (thread_list != ""):
	num_threads = thread_list.rstrip().split(',')
	try:
		num_threads = map(int,num_threads)
	except ValueError:
		print "Invalid numbers of threads...aborting!\n"
		exit(1)
	if (len([x for x in num_threads if x < 0]) > 0):
		print "Can't have negative numbers of threads...aborting!\n"
		exit(1)


printhr()
fastest = [None,None,None]
for version in all_versions:
	print "Timing version",version+":"
	for num in num_threads:
		average = timeVersionWithThreads(version,num)
		print "\t",num,"threads:",average,"seconds"
		if (fastest == [None,None,None]) or (fastest[0] > average):
			fastest = [average,version,num]
printhr
print "Fastest version:",fastest[1],"with",fastest[2],"threads:",fastest[0]
printdhr


