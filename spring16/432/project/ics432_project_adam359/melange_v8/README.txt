recursion is destroying performance.
To prove this, I must remove the need for recursive calls.

Even without the recursive call, performance is terrible.

OK, just changed vec_dot from a function call to a macro. Went from around 130 seconds to 90 seconds!

OK, so the compiler does this for us when using -O4...
