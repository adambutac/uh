Tried changing the number of pixel_samples from 4 to 1, and it reduced the
computation time by a factor over 20, with an average difference of about 8.

Changing it to 2 still had a significant reduction in computation time, with a
total time of around 7 seconds.


Gprof says that sphere_ray_intersect is a significant area to work on.
Messed with the if clause in there that checks the values of t1, t2, and takes
the min if the two as long as they are greater than EPSILON. Managed to reduce
the time here by about .08562 seconds, though I'm pretty sure the if statement is now different. The
pictures are equal. 
