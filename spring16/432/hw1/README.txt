                                                                Adam Butac
                                                                01.22.16
                                                                ICS 432 


                    Homework Assignment #1 "Java Threads"


    Exercise #1
        Question #1
            [x] Create a copy of MakeMovieSequential.java and rename it to
                MakeMovieConcurrent.java
               
            [x] Enhance it so that it prints out execution time in seconds.

            [x] Execute on a quiescent machine for 240 frames and report on
                the execution time. 
                
                    I will first do this exercise on my laptop, as it is a dual
                core processor with a regular hard disk drive. This should 
                accentuate the problems encountered. 

                    The total runtime of the program was about 1050 seconds.
                Considering this was run on a single thread, there is room for 
                a lot of improvment.

                    An interesting note, the initial frame took the most time to
                compute, at around 6 seconds. Subsequent frames however took
                less and less time to compute, leveling out at around 4
                seconds and change. I suspect this is due to some sort of
                caching mechanism.

        Question #2
            [x] Enhance your program so that two threads each compute half of
                the movie frames.
            
            [x] Measure the execution time again for 240 frames and report on
                it.
                
                My first observation was that each frame took LONGER to
                complete when compared with the sequential algorithm. However,
                the total time to render all 240 frames was reduced by several
                seconds. 

            [x] How much faster does your program run compared to the
                sequential version?

                About 126 seconds faster.

                With a two threads it tooks about 924 seconds whereas a single
                thread took 1050 seconds.

            [x] Discuss why you think it ran faster.
                
                Although each frame took a little longer to complete, it took
                less time to complete a subset of frames since multiple frames
                could be computed simutaniously. 

                As a side note, one problem I encountered was "waiting" for a
                thread to finish. Suppose there are two threads A an B, where
                thread A is active, and thread B is not. If I were to use join
                on thread A, thread B would remain idle until thread A dies.
                To combat this, I have a while loop that waits for any thread
                to die, at the cost of some context switching. It appears that
                each frame takes about the same amount of time to compute, so
                the problem I described would most likely not happen, and a 
                more naive approach may be more efficent.

        Question #3
            [x] Enchance your program so that it takes a command line argument
                to specify the number of threads that will be used to compute
                movie frames (1,2,3 or 4).

            [x] Distribute the computation evenly across the threads.  

            [x] Execute your program with 3 and 4 threads for 240 frames and
                report on the execution times.

            [x] Also compute the "speed up" achieved (ratio of sequential
                execution time to concurrent execution time).

                Since the code changed, I ran for threads 1-4. 

                BEFORE DOWNLOADING MORE RAM
                 ________________________________________________
                |         |            | Average Time |          | 
                | Threads | Total Time |  Per Frame   | Speed up |
                |_________|____________|______________|__________|
                |    1    |    1045s   |     4.3s     |    1     |
                |--------- ------------ -------------- ----------|
                |    2    |    912s    |     7.6s     |   1.15   |
                |--------- ------------ -------------- ----------|
                |    3    |    826s    |    10.3s     |   1.27   |
                |--------- ------------ -------------- ----------|
                |    4    |    935s    |    15.5s     |   1.12   |
                |------------------------------------------------|

                As displayed within the table, sequential time performed the
                worst, while having 3 threads performed the best. I suspect
                that when using 4 threads the bottleneck was the disk I/O.
                Or, possibly, for all threads.

                EDIT:
                    Ok, so I've figured out the problem. Java was not given
                enough memory to store all the data it needed, so the garbage
                collector was going crazy trying to create room. By running
                the JVM with more room (not sure what the default is) the 
                threads are given the memory they need.

                EDIT:EDIT:
                    Allocating more memory for the JVM only helps during the
                first minute or so, aftewards the memory becomes full, and its
                the same problem all over again. It is as if there is a memory
                leak in the program.

            Discuss the following points:
            [x] Is the speedup with 3 threads equal to 3? Is the speedup equal
                to 4 with 4 threads? 
    
                The speed up was not anywhere near what I thought it would be.                                
                I believe that if there was enough memory in ram to hold whatever 
                it is that is taking it all up, the speedup would have been 
                much, much higher.

            [x] For which number of threads do you get the best performance
                and how many cores do you have on your machine?
                
                Strangely, 3 threads proved the best performance
                
            [ ] On your machine, is it worth it using as many threads as cores
                for this application?
