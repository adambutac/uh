OK, so after dabbling with the code and refreshing myself on vectors, I decided to offically start work on optimizing the code.


I was first using gprof with a level 4 optimization flag. This was yeilding strange results, but it still gave me the hint that sphere_ray_intersect was where I should start working.

After consulting with the man page for gcc, I found that the -Og is a good compromise for compiler optimization with gprof.

Running the code with gprof enabled and the optimization on g confirmed that the code spends most of its time in sphere_ray_intersect.


Removing calls the the vec_dot function reduced the runtime by a few seconds, though I am certain that the compiler does this for us at sufficent optimization levels.
