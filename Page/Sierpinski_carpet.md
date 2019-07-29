Animated_Sierpinski_carpet.gif

The SIERPINSKI CARPET is a plane fractal first described by Wacław Sierpiński in 1916. The carpet is one generalization of the Cantor set to two dimensions; another is the Cantor dust.

The technique of subdividing a shape into smaller copies of itself, removing one or more copies, and continuing recursively can be extended to other shapes. For instance, subdividing an equilateral triangle into four equilateral triangles, removing the middle triangle, and recursing leads to the Sierpinski triangle. In three dimensions, a similar construction based on cubes is known as the Menger sponge.


Construction

The construction of the Sierpinski carpet begins with a square. The square is cut into 9 congruent subsquares in a 3-by-3 grid, and the central subsquare is removed. The same procedure is then applied recursively to the remaining 8 subsquares, _ad infinitum_. It can be realised as the set of points in the unit square whose coordinates written in base three do not both have a digit '1' in the same position.[1]

The process of recursively removing squares is an example of a finite subdivision rule.

The Sierpinski carpet can also be created by iterating every pixel in a square and using the following algorithm to decide if the pixel is filled. The following implementation is valid C, C++, and most languages derived from C.

    /*
    * Decides if a point at a specific location is filled or not.  This works by iteration first checking if
    * the pixel is unfilled in successively larger squares or cannot be in the center of any larger square.
    * x is the x coordinate of the point being checked with zero being the first pixel
    * y is the y coordinate of the point being checked with zero being the first pixel
    * 1 if it is to be filled or 0 if it is open
    */
    int isSierpinskiCarpetPixelFilled(int x, int y)
    {
        while (x > 0 || y > 0) // when either of these reaches zero the pixel is determined to be on the edge
                                   // at that square level and must be filled
        {
            if (x % 3 == 1 && y % 3 == 1) //checks if the pixel is in the center for the current square level
                return 0;
            x /= 3; //x and y are decremented to check the next larger square level
            y /= 3;
        }
        return 1; // if all possible square levels are checked and the pixel is not determined
                       // to be open it must be filled
    }

Process

Sierpinski_carpet_1.svg Sierpinski_carpet_2.svg Sierpinski_carpet_3.svg Sierpinski_carpet_4.svg Sierpinski_carpet_5.svg Sierpinski_carpet_6.svg


Properties

Peano_Sierpinski_carpet_4.svg with the middle line erased creates a Sierpinski carpet]]

The area of the carpet is zero (in standard Lebesgue measure).

    PROOF: Denote as the area of iteration . Then _a_(i)_}}. So ()}}, which tends to 0 as goes to infinity.

The interior of the carpet is empty.

    PROOF: Suppose by contradiction that there is a point in the interior of the carpet. Then there is a square centered at which is entirely contained in the carpet. This square contains a smaller square whose coordinates are multiples of for some . But, this square must have been holed in iteration , so it cannot be contained in the carpet – a contradiction.

The Hausdorff dimension of the carpet is .[2]

Sierpiński demonstrated that his carpet is a universal plane curve.[3] That is: the Sierpinski carpet is a compact subset of the plane with Lebesgue covering dimension 1, and every subset of the plane with these properties is homeomorphic to some subset of the Sierpinski carpet.

This 'universality' of the Sierpinski carpet is not a true universal property in the sense of category theory: it does not uniquely characterize this space up to homeomorphism. For example, the disjoint union of a Sierpinski carpet and a circle is also a universal plane curve. However, in 1958 Gordon Whyburn[4] uniquely characterized the Sierpinski carpet as follows: any curve that is locally connected and has no 'local cut-points' is homeomorphic to the Sierpinski carpet. Here a LOCAL CUT-POINT is a point for which some connected neighborhood of has the property that is not connected. So, for example, any point of the circle is a local cut point.

In the same paper Whyburn gave another characterization of the Sierpinski carpet. Recall that a continuum is a nonempty connected compact metric space. Suppose is a continuum embedded in the plane. Suppose its complement in the plane has countably many connected components and suppose:

-   the diameter of goes to zero as ;
-   the boundary of and the boundary of are disjoint if ;
-   the boundary of is a simple closed curve for each ;
-   the union of the boundaries of the sets is dense in .

Then is homeomorphic to the Sierpinski carpet.


Brownian motion on the Sierpinski carpet

The topic of Brownian motion on the Sierpinski carpet has attracted interest in recent years.[5] Martin Barlow and Richard Bass have shown that a random walk on the Sierpinski carpet diffuses at a slower rate than an unrestricted random walk in the plane. The latter reaches a mean distance proportional to after steps, but the random walk on the discrete Sierpinski carpet reaches only a mean distance proportional to for some . They also showed that this random walk satisfies stronger large deviation inequalities (so called "sub-Gaussian inequalities") and that it satisfies the elliptic Harnack inequality without satisfying the parabolic one. The existence of such an example was an open problem for many years.


Wallis sieve

Wallis_sieve_iteration_3.png

A variation of the Sierpinski carpet, called the WALLIS SIEVE, starts in the same way, by subdividing the unit square into nine smaller squares and removing the middle of them. At the next level of subdivision, it subdivides each of the squares into 25 smaller squares and removes the middle one, and it continues at the th step by subdividing each square into (the odd squares[6]) smaller squares and removing the middle one.

By the Wallis product, the area of the resulting set is ,[7][8] unlike the standard Sierpinski carpet which has zero limiting area.

However, by the results of Whyburn mentioned above, we can see that the Wallis sieve is homeomorphic to the Sierpinski carpet. In particular, its interior is still empty.


Applications

Mobile phone and WiFi fractal antennas have been produced in the form of few iterations of the Sierpinski carpet. Due to their self-similarity and scale invariance, they easily accommodate multiple frequencies. They are also easy to fabricate and smaller than conventional antennas of similar performance, thus being optimal for pocket-sized mobile phones.


See also

-   List of fractals by Hausdorff dimension
-   Menger sponge


References


External links

-   Variations on the Theme of Tremas II
-   Sierpiński Cookies
-   Sierpinski Carpet Project
-   Sierpinski Carpet solved by means of modular arithmetics

Category:Iterated function system fractals Category:Curves Category:Topological spaces Category:Science and technology in Poland

[1]

[2]

[3]

[4]

[5]

[6]  (2n+1)^2. Also centered octagonal numbers.}}

[7]

[8]