[super@enyo ics432_pa9_adam359]$ for i in `seq 1 10`; do ./crazy_scientist_v2;
done;

Thread #0 Execution time: 10.36 seconds
Thread #1 Execution time: 69.38 seconds
Overall execution time: 69.38 seconds
Load imbalance: 74.02%

Thread #0 Execution time: 10.30 seconds
Thread #1 Execution time: 69.30 seconds
Overall execution time: 69.30 seconds
Load imbalance: 74.12%

Thread #0 Execution time: 10.30 seconds
Thread #1 Execution time: 69.38 seconds
Overall execution time: 69.38 seconds
Load imbalance: 74.14%

Thread #0 Execution time: 10.32 seconds
Thread #1 Execution time: 69.28 seconds
Overall execution time: 69.28 seconds
Load imbalance: 74.06%

Thread #0 Execution time: 10.40 seconds
Thread #1 Execution time: 69.79 seconds
Overall execution time: 69.79 seconds
Load imbalance: 74.06%

Thread #0 Execution time: 10.30 seconds
Thread #1 Execution time: 69.29 seconds
Overall execution time: 69.29 seconds
Load imbalance: 74.12%

Thread #0 Execution time: 10.30 seconds
Thread #1 Execution time: 69.32 seconds
Overall execution time: 69.32 seconds
Load imbalance: 74.12%

Thread #0 Execution time: 10.31 seconds
Thread #1 Execution time: 69.31 seconds
Overall execution time: 69.31 seconds
Load imbalance: 74.11%

Thread #0 Execution time: 10.30 seconds
Thread #1 Execution time: 69.30 seconds
Overall execution time: 69.30 seconds
Load imbalance: 74.12%

Thread #0 Execution time: 10.31 seconds
Thread #1 Execution time: 69.53 seconds
Overall execution time: 69.53 seconds
Load imbalance: 74.11%

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The average load imbalance is about 73.50%. This is due to the first thread
having a smaller amount of work compared with the second thread which
calculates much more. The first half of the array is theoretically only about
quarter of the total work. 

The average execution time is about 69.50 seconds, and is limited by the
second threads execution time, and also limits the overall execution time.
The first thread runs completly parallel to the second, so its execution time
is hidden within Thread#1's execution time.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[super@enyo ics432_pa9_adam359]$ for i in `seq 1 10`; do ./crazy_scientist_v3;
done;

Thread #0 Execution time: 37.23 seconds
Thread #1 Execution time: 42.54 seconds
Overall execution time: 42.54 seconds
Load imbalance: 6.65%

Thread #0 Execution time: 42.47 seconds
Thread #1 Execution time: 37.15 seconds
Overall execution time: 42.47 seconds
Load imbalance: 6.68%

Thread #0 Execution time: 37.20 seconds
Thread #1 Execution time: 42.51 seconds
Overall execution time: 42.51 seconds
Load imbalance: 6.66%

Thread #0 Execution time: 37.15 seconds
Thread #1 Execution time: 42.48 seconds
Overall execution time: 42.48 seconds
Load imbalance: 6.69%

Thread #0 Execution time: 37.18 seconds
Thread #1 Execution time: 42.48 seconds
Overall execution time: 42.48 seconds
Load imbalance: 6.66%

Thread #0 Execution time: 42.76 seconds
Thread #1 Execution time: 37.42 seconds
Overall execution time: 42.76 seconds
Load imbalance: 6.66%

Thread #0 Execution time: 37.21 seconds
Thread #1 Execution time: 42.52 seconds
Overall execution time: 42.52 seconds
Load imbalance: 6.65%

Thread #0 Execution time: 42.51 seconds
Thread #1 Execution time: 37.18 seconds
Overall execution time: 42.51 seconds
Load imbalance: 6.68%

Thread #0 Execution time: 37.19 seconds
Thread #1 Execution time: 42.49 seconds
Overall execution time: 42.49 seconds
Load imbalance: 6.65%

Thread #0 Execution time: 37.18 seconds
Thread #1 Execution time: 42.51 seconds
Overall execution time: 42.51 seconds
Load imbalance: 6.68%

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a fairly large improvement of about 31 seconds, or a speedup of
around 1.73. This is because the threads are now running almost completely
parallel to eachother. Their load is fairly balanced, deviating by an average
of about 6.67%.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[super@enyo ics432_pa9_adam359]$ for i in `seq 1 10`; do ./crazy_scientist_v4;
done;
Thread #0 Execution time: 39.66 seconds
Thread #1 Execution time: 40.14 seconds
Overall execution time: 40.14 seconds
Load imbalance: 0.60%
Average: 39.90
Max Deviation: 0.24

Thread #0 Execution time: 39.62 seconds
Thread #1 Execution time: 40.09 seconds
Overall execution time: 40.09 seconds
Load imbalance: 0.60%
Average: 39.86
Max Deviation: 0.24

Thread #0 Execution time: 39.59 seconds
Thread #1 Execution time: 40.07 seconds
Overall execution time: 40.07 seconds
Load imbalance: 0.60%
Average: 39.83
Max Deviation: 0.24

Thread #0 Execution time: 40.07 seconds
Thread #1 Execution time: 39.59 seconds
Overall execution time: 40.07 seconds
Load imbalance: 0.60%
Average: 39.83
Max Deviation: 0.24

Thread #0 Execution time: 40.41 seconds
Thread #1 Execution time: 39.93 seconds
Overall execution time: 40.41 seconds
Load imbalance: 0.60%
Average: 40.17
Max Deviation: 0.24

Thread #0 Execution time: 40.12 seconds
Thread #1 Execution time: 39.65 seconds
Overall execution time: 40.12 seconds
Load imbalance: 0.60%
Average: 39.88
Max Deviation: 0.24

Thread #0 Execution time: 39.62 seconds
Thread #1 Execution time: 40.10 seconds
Overall execution time: 40.10 seconds
Load imbalance: 0.60%
Average: 39.86
Max Deviation: 0.24

Thread #0 Execution time: 39.61 seconds
Thread #1 Execution time: 40.09 seconds
Overall execution time: 40.09 seconds
Load imbalance: 0.60%
Average: 39.85
Max Deviation: 0.24

Thread #0 Execution time: 40.24 seconds
Thread #1 Execution time: 39.76 seconds
Overall execution time: 40.24 seconds
Load imbalance: 0.60%
Average: 40.00
Max Deviation: 0.24

Thread #0 Execution time: 39.67 seconds
Thread #1 Execution time: 40.15 seconds
Overall execution time: 40.15 seconds
Load imbalance: 0.59%
Average: 39.91
Max Deviation: 0.24

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Version 4 of the crazy_scientist program strand is by far the best performing.
It had the least amount of load imbalance, and therefore the most parallelism.
This is due to the nature of the algorithm, where the further down the
matrix we are, the greater the computational load becomes. It can be thought
of sand on a beach. The further from the water you are, the lower the slope
is. As you move closer to the water (towards the bottom right of the matrix,
if 0,0 is at the top left) the difference between the slope between each step 
becomes greater and greater. In this program, the difference in the slope is
greater across rows than it is columns, but there comes a point where even a
step to the right in the matrix yeilds a very large difference in computation. 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
