CONCLUSION
----------------------------------------------------------------------------------------


NOTES
----------------------------------------------------------------------------------------

melange_v0
Compiling all the base stats for runtime and gprof. It appears that most of the time is
spent finding where the ray intersects the surfaces, specifically the sphere. I am 
somewhat familiar with how ray tracing works, but at first glance the code appears very
complex.

----------------------------------------------------------------------------------------

melange_v1
Instead of starting off with the obvious route of trying to parallelize parts of the 
code, I want to start by trying to get the sequential code to run faster.

The first thing I tried was removing the "background panel" and setting the anbient 
color to be white. Although this reduced runtime by about a factor of 3, it yeilded 
incorrect results. The image is clearly different from the original, since the spheres 
are transparent and transduce the light from the background, and the shadows are 
missing.

This also was a bit of a cheat since it requires removing a shape from the set.

----------------------------------------------------------------------------------------

melange_v2
Tried changing the number of pixel_samples from 4 to 1 in the scene.xml file and it 
reduced the computation time by a factor over 20, with an average pixel difference of 
about 8.

Changing it to 2 still had a significant reduction in computation time, with a total 
time of around 7 seconds.

Gprof says that sphere_ray_intersect is a significant area to work on, so a small 
increase in performance here should yeild large gains in total execution time.

I tried changing the order of the checks in the if clause that checks the values of t1,
t2, and takes the min if the two as long as they are greater than EPSILON. Managed to 
reduce the time here by about .08562 seconds, though I'm pretty sure the if statement is
now different, even though the pictures are equal. An interesting note: changing the 
optimization from O4 to Og makes the pictures different with the if statement change.

----------------------------------------------------------------------------------------

melange_v4
Removing calls to the vec_dot function by replacing the function call with the code 
reduced the runtime by a few seconds, though I am certain that the compiler has the ability to do this. 

----------------------------------------------------------------------------------------

melange_v5
Tried to use a hashmap in c++ to memoize calculations that were previously done. 
It killed performance tremendously. Having to access memory outside of the cache is 
devistating.

----------------------------------------------------------------------------------------

melange_v6
I had the idea that maybe using smaller datatypes would increase performance since more
data would be able to fit in the cache. This was not the case. Changing all floating 
point numbers to doubles increased performance slightly, while changing them all to 
floating point decreased performance noticeably. I believe this may be due to how the 
values are addressed. Floating points may only be a few bytes, but they are still 
allocated in the same amount of memory as doubles, at least for my 64 bit version of 
linux. I'm not sure why doubles perform better than floats. This could be a compiler 
optimization or part of optimizations within the processor.

I wrote some code to test the differences in performance against floating point and 
integer values. The interger values outperformed the floating points by a lot. I would 
change the code to use only integers, but this would take more time than I am able to 
dedicate to this project.

----------------------------------------------------------------------------------------

melange_v8
I feel that maybe the recursion call from is destroying performance. To prove this, I 
must remove the need for recursive calls. 

Even without the recursive call, performance is terrible.

OK, just changed vec_dot from a function call to a macro. Went from around 130 seconds 
to 90 seconds!

So it appears that the compiler has the ability to basically make functions
into in-line code similar to a macro.

----------------------------------------------------------------------------------------

melange_v9
I feel like I got super lucky... I commented out the loop that covers a nested loop. 
Runetime went from about 7 seconds to about half a second running in parallel mode. 
I swear I've done this before too... I really really wish I had used git for this 
project.

----------------------------------------------------------------------------------------

melange_v10
For my final version, I will be focusing on making things "lean and mean." At least to 
some context. I feel like I dont know enough about low level optimizations at the moment,
so I will be trying an array of changes to see if there is any difference.


Tried changing the switch in shape_ray_intersect into an if else, and it increased 
runtime by about .01 seconds. Removing the return statement and instead using
the default keyword in the switch decreased it by about the same amount.


