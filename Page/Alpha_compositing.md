Hue_alpha_falloff.png

In computer graphics, ALPHA COMPOSITING is the process of combining an image with a background to create the appearance of partial or full transparency. It is often useful to render image elements in separate passes, and then combine the resulting multiple 2D images into a single, final image called the composite. For example, compositing is used extensively when combining computer-rendered image elements with live footage.

In order to combine these image elements correctly, it is necessary to keep an associated _matte_ for each element. This matte contains the coverage information—the shape of the geometry being drawn—making it possible to distinguish between parts of the image where the geometry was actually drawn and other parts of the image that are empty.


Description

To store matte information, the concept of an alpha channel was introduced by Alvy Ray Smith in the late 1970s, and fully developed in a 1984 paper by Thomas Porter and Tom Duff.[1] In a 2D image element, which stores a color for each pixel, additional data is stored in the alpha channel with a value between 0 and 1. A value of 0 means that the pixel does not have any coverage information and is transparent; i.e. there was no color contribution from any geometry because the geometry did not overlap this pixel. A value of 1 means that the pixel is opaque because the geometry completely overlapped the pixel.

If an alpha channel is used in an image, there are two common representations that are available: straight (unassociated) alpha, and premultiplied (associated) alpha.

With straight alpha, the RGB components represent the color of the object or pixel, disregarding its opacity.

With premultiplied alpha, the RGB components represent the emission of the object or pixel, and the alpha represents the occlusion. A more obvious advantage of this is that, in certain situations, it can save a subsequent multiplication (e.g. if the image is used many times during later compositing). However, the most significant advantages of using premultiplied alpha are for correctness and simplicity rather than performance: premultiplied alpha allows correct filtering and blending. In addition, premultiplied alpha allows regions of regular alpha blending and regions with additive blending mode to be encoded within the same image, because channel values are usually stored in a fixed-point format which bounds the values to be between 0 and 1.[2]

Assuming that the pixel color is expressed using _straight_ (non-premultiplied) RGBA tuples, a pixel value of (0, 0.7, 0, 0.5) implies a pixel that has 70% of the maximum green intensity and 50% opacity. If the color were fully green, its RGBA would be (0, 1, 0, 0.5).

However, if this pixel uses premultiplied alpha, all of the RGB values (0, 0.7, 0) are as though they were scaled for occlusion by 0.5 and then the alpha is appended to the end to yield (0, 0.35, 0, 0.5). In this case, the 0.35 value for the G channel actually indicates 70% green emission intensity (with 50% occlusion). A pure green emission would be encoded as (0, 0.5, 0, 0.5). For this reason, knowing whether a file uses straight or premultiplied alpha is essential to correctly process or composite it as a different formula is used. It is also entirely acceptable to have an RGBA triplet express emission with no occlusion, such as (0.4, 0.3, 0.2, 0.0). Fires and flames, glows, flares, and other such phenomena can only be represented using associated / premultiplied alpha.

The only important difference is in the dynamic range of the colour representation in finite precision numerical calculations (which is in all applications): premultiplied alpha has a unique representation for transparent pixels, avoiding the need to choose a "clear color" or resultant artefacts such as edge fringes (see the next paragraphs). In an associated / premultiplied alpha image, the RGB represents the emission amount, while the alpha is occlusion. Premultiplied alpha has some practical advantages over normal alpha blending because interpolation and filtering give correct results.

Ordinary interpolation without premultiplied alpha leads to RGB information leaking out of fully transparent (A=0) regions, even though this RGB information is ideally invisible. When interpolating or filtering images with abrupt borders between transparent and opaque regions, this can result in borders of colors that were not visible in the original image. Errors also occur in areas of semitransparancy because the RGB components are not correctly weighted, giving incorrectly high weighting to the color of the more transparent (lower alpha) pixels.

Premultiplication can reduce the available relative precision in the RGB values when using integer or fixed-point representation for the color components, which may cause a noticeable loss of quality if the color information is later brightened or if the alpha channel is removed. In practice, this is not usually noticeable because during typical composition operations, such as OVER, the influence of the low-precision colour information in low-alpha areas on the final output image (after composition) is correspondingly reduced. This loss of precision also makes premultiplied images easier to compress using certain compression schemes, as they do not record the color variations hidden inside transparent regions, and can allocate fewer bits to encode low-alpha areas.

With the existence of an alpha channel, it is possible to express compositing image operations using a _compositing algebra_. For example, given two image elements A and B, the most common compositing operation is to combine the images such that A appears in the foreground and B appears in the background. This can be expressed as A OVER B. In addition to OVER, Porter and Duff defined the compositing operators IN, HELD OUT BY (usually abbreviated OUT), ATOP, and XOR (and the reverse operators ROVER, RIN, ROUT, and RATOP) from a consideration of choices in blending the colors of two pixels when their coverage is, conceptually, overlaid orthogonally:

Image:Alpha compositing.svg

The OVER operator is, in effect, the normal painting operation (see Painter's algorithm). The IN operator is the alpha compositing equivalent of clipping.

As an example, the OVER operator can be accomplished by applying the following formula to each pixel value:

$$C_o = \frac{C_a \alpha_a + C_b \alpha_b \left(1 - \alpha_a\right)}{\alpha_a + \alpha_b \left(1 - \alpha_a\right)}$$

where C_(o) is the result of the operation, C_(a) is the color of the pixel in element A, C_(b) is the color of the pixel in element B, and α_(a) and α_(b) are the alpha of the pixels in elements A and B respectively. If it is assumed that all color values are premultiplied by their alpha values (c_(i) = α_(i)C_(i)), we can rewrite the equation for output color as:

_c__(_o_) = _c__(_a_) + _c__(_b_)(1−_α__(_a_))
and resulting alpha channel value is

$$\alpha_o = \frac{c_o}{C_o} = \alpha_a + \alpha_b \left(1 - \alpha_a\right)$$



Examples

Examples of red overlaid with green with both colours fully opaque:

PorterDuffAdd.png|ADD operation PorterDuffClear.png|CLEAR operation PorterDuffMultiply.png|MULTIPLY operation PorterDuffOverlay.png|OVERLAY operation


Analytical derivation of the over operator

Porter and Duff gave a geometric interpretation of the alpha compositing formula by studying orthogonal coverages. Another derivation of the formula, based on a physical reflectance/transmittance model, can be found in a 1981 paper by Bruce A. Wallace.[3]

A third approach is found by starting out with two very simple assumptions. For simplicity, we shall here use the shorthand notation a ⊙ b for representing the OVER operator.

The first assumption is that in the case where the background is opaque (i.e. α_(b) = 1), the over operator represents the convex combination of a and b:

_C__(_o_) = _α__(_a_)_C__(_a_) + (1 − _α__(_a_))_C__(_b_)

The second assumption is that the operator must respect the associative rule:

(_a_ ⊙ _b_) ⊙ _c_ = _a_ ⊙ (_b_ ⊙ _c_)

Now, let us assume that a and b have variable transparencies, whereas c is opaque. We're interested in finding

_o_ = _a_ ⊙ _b_
.

We know from the associative rule that the following must be true:

_o_ ⊙ _c_ = _a_ ⊙ (_b_ ⊙ _c_)

We know that c is opaque and thus follows that b ⊙ c is opaque, so in the above equation, each ⊙ operator can be written as a convex combination:

$$\begin{align}
  \alpha_o C_o + (1 - \alpha_o) C_c &= \alpha_a C_a + (1 - \alpha_a) (\alpha_b C_b + (1 - \alpha_b) C_c) \\
  &= \alpha_a C_a + (1 - \alpha_a) \alpha_b C_b + (1 - \alpha_a) (1 - \alpha_b) C_c
\end{align}$$

Hence we see that this represents an equation of the form X₀ + Y₀C_(c) = X₁ + Y₁C_(c). By setting X₀ = X₁ and Y₀ = Y₁ we get

$$\begin{align}
  \alpha_o &= 1 - (1 - \alpha_a) (1 - \alpha_b),\\
  C_o &= \frac{\alpha_a C_a + (1 - \alpha_a)\alpha_b C_b}{\alpha_o},
\end{align}$$
which means that we have analytically derived a formula for the output alpha and the output color of a ⊙ b.

An even more compact representation is given by noticing that (1 − α_(a))α_(b) = α_(o) − α_(a):

$$C_o = \frac{\alpha_a}{\alpha_o} C_a + \left(1 - \frac{\alpha_a}{\alpha_o}\right) C_b$$

The ⊙ operator fulfills all the requirements of a non-commutative monoid, where the identity element e is chosen such that e ⊙ a = a ⊙ e = a (i.e. the identity element can be any tuple ⟨C, α⟩ with α = 0).


Alpha blending

Alpha blending is the process of combining a translucent foreground color with a background color, thereby producing a new blended color. The degree of the foreground color's translucency may range from completely transparent to completely opaque. If the foreground color is completely transparent, the blended color will be the background color. Conversely, if it is completely opaque, the blended color will be the foreground color. The translucency can range between these extremes, in which case the blended color is computed as a weighted average of the foreground and background colors.

Alpha blending is a convex combination of two colors allowing for transparency effects in computer graphics. The value of alpha in the color code ranges from 0.0 to 1.0, where 0.0 represents a fully transparent color, and 1.0 represents a fully opaque color. This alpha value also corresponds to the ratio of "SRC over DST" in Porter and Duff equations.

The value of the resulting color is given by:

$$\begin{cases}
\mathrm{out}_A = \mathrm{src}_A + \mathrm{dst}_A (1 - \mathrm{src}_A) \\
\mathrm{out}_{RGB} = \bigl( \mathrm{src}_{RGB} \mathrm{src}_A + \mathrm{dst}_{RGB} \mathrm{dst}_A \left( 1 - \mathrm{src}_A \right) \bigr) \div \mathrm{out}_A \\
\mathrm{out}_A = 0 \Rightarrow \mathrm{out}_{RGB} = 0
\end{cases}$$

If the destination background is opaque, then dst_(A) = 1, and if you enter it to the upper equation:

$$\begin{cases}
\mathrm{out}_A = 1 \\
\mathrm{out}_{RGB} = \mathrm{src}_{RGB} \mathrm{src}_A + \mathrm{dst}_{RGB} (1 - \mathrm{src}_A)
\end{cases}$$

The alpha component may be used to blend to red, green and blue components equally, as in 32-bit RGBA, or, alternatively, there may be three alpha values specified corresponding to each of the primary colors for spectral color filtering.

If premultiplied alpha is used, the above equations are simplified to:

$$\begin{cases}
\mathrm{out}_A = \mathrm{src}_A + \mathrm{dst}_A (1 - \mathrm{src}_A) \\
\mathrm{out}_{RGB} = \mathrm{src}_{RGB} + \mathrm{dst}_{RGB} \left( 1 - \mathrm{src}_A \right)
\end{cases}$$


Other transparency methods

Although used for similar purposes, transparent colors and image masks do not permit the smooth blending of the superimposed image pixels with those of the background (only whole image pixels or whole background pixels allowed).

A similar effect can be achieved with a 1-bit alpha channel, as found in the 16-bit RGBA Highcolor mode of the Truevision TGA image file format and related TARGA and AT-Vista/NU-Vista display adapters' Highcolor graphic mode. This mode devotes 5 bits for every primary RGB color (15-bit RGB) plus a remaining bit as the "alpha channel".


Composing alpha blending with gamma correction

Mix_lazy.png

Mix_precise.png

The RGB values stored in computer images are actually not the real light intensities, but they have been transformed by a Gamma correction, in order to optimize the usage of bits when encoding an image.

The gamma correction can be roughly summarised as below:

-   let displayed_(RGB) be the RGB intensity that is displayed on the screen (in normalised intensities, i.e. between 0 and 1)
-   let stored_(RGB) be the RGB intensity that is stored as bits in the computer memory (in normalised intensities also)
-   let γ be the "decoding" gamma of 2.2 of the stored_(RGB) image (γ has a typical value of 2.2)

Then we have the following relation:

displayed_(RGB) = stored_(RGB)^(γ)

Thus, when dealing with computer stored RGB values, alpha blending will look much better if the gamma correction is unapplied before averaging the images and re-applied afterwards. For more detailed information, refer to the video Computer Color is Broken by MinutePhysics.[4]

For example, if one wants to superimpose an image named overlay_(rgb) with an alpha channel overlay_(α) onto a background image background_(rgb), then the resulting image out_(rgb) can be calculated like this:

out_(rgb) = (overlay_(rgb)^(γ) × overlay_(α) + background_(rgb)^(γ) × (1 − overlay_(α)))^(1/γ)

Note: out_(rgb) is the image as it will be stored in the computer memory; and it will be displayed as out_(rgb)^(γ) on the computer display.


See also

-   Alpha to coverage
-   Bit blit
-   Blend modes
-   Digital compositing
-   Image masks
-   Magic Pink
-   Portable Network Graphics
-   RGBA color space
-   Texture splatting
-   Transparency (graphic)
-   Transparent color in palettes
-   Truevision TGA


References


External links

-   Compositing Digital Images - Thomas Porter and Tom Duff (Original Paper)
-   Image Compositing Fundamentals
-   Understand Compositing and Color extensions in SVG 1.2 in 30 minutes!
-   Alpha Matting and Premultiplication

Category:Computer graphics algorithms

[1]

[2]

[3]

[4]