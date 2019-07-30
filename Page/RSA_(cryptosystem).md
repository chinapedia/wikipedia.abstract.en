RSA (RIVEST–SHAMIR–ADLEMAN) is one of the first public-key cryptosystems and is widely used for secure data transmission. In such a cryptosystem, the encryption key is public and it is different from the decryption key which is kept secret (private). In RSA, this asymmetry is based on the practical difficulty of the factorization of the product of two large prime numbers, the "factoring problem". The acronym RSA is made of the initial letters of the surnames of Ron Rivest, Adi Shamir, and Leonard Adleman, who first publicly described the algorithm in 1977. Clifford Cocks, an English mathematician working for the British intelligence agency Government Communications Headquarters (GCHQ), had developed an equivalent system in 1973, but this was not declassified until 1997.[1]

A user of RSA creates and then publishes a public key based on two large prime numbers, along with an auxiliary value. The prime numbers must be kept secret. Anyone can use the public key to encrypt a message, but with currently published methods, and if the public key is large enough, only someone with knowledge of the prime numbers can decode the message feasibly.[2] Breaking RSA encryption is known as the RSA problem. Whether it is as difficult as the factoring problem remains an open question.

RSA is a relatively slow algorithm, and because of this, it is less commonly used to directly encrypt user data. More often, RSA passes encrypted shared keys for symmetric key cryptography which in turn can perform bulk encryption-decryption operations at much higher speed.


History

, one of the three inventors of RSA (two others being Ron Rivest and Leonard Adleman)]] The idea of an asymmetric public-private key cryptosystem is attributed to Whitfield Diffie and Martin Hellman, who published this concept in 1976. They also introduced digital signatures and attempted to apply number theory. Their formulation used a shared-secret-key created from exponentiation of some number, modulo a prime number. However, they left open the problem of realizing a one-way function, possibly because the difficulty of factoring was not well-studied at the time.[3]

Ron Rivest, Adi Shamir, and Leonard Adleman at the Massachusetts Institute of Technology, made several attempts over the course of a year to create a one-way function that was hard to invert. Rivest and Shamir, as computer scientists, proposed many potential functions, while Adleman, as a mathematician, was responsible for finding their weaknesses. They tried many approaches including "knapsack-based" and "permutation polynomials". For a time, they thought what they wanted to achieve was impossible due to contradictory requirements.[4] In April 1977, they spent Passover at the house of a student and drank a good deal of Manischewitz wine before returning to their homes at around midnight.[5] Rivest, unable to sleep, lay on the couch with a math textbook and started thinking about their one-way function. He spent the rest of the night formalizing his idea, and he had much of the paper ready by daybreak. The algorithm is now known as RSA – the initials of their surnames in same order as their paper.[6]

Clifford Cocks, an English mathematician working for the British intelligence agency Government Communications Headquarters (GCHQ), described an equivalent system in an internal document in 1973.[7] However, given the relatively expensive computers needed to implement it at the time, RSA was considered to be mostly a curiosity and, as far as is publicly known, was never deployed. His discovery, however, was not revealed until 1997 due to its top-secret classification.

Kid-RSA (KRSA) is a simplified public-key cipher published in 1997, designed for educational purposes. Some people feel that learning Kid-RSA gives insight into RSA and other public-key ciphers, analogous to simplified DES.[8][9][10][11][12]


Patent

MIT was granted for a "Cryptographic communications system and method" that used the algorithm, on September 20, 1983. Though the patent was going to expire on September 21, 2000 (the term of patent was 17 years at the time), the algorithm was released to the public domain by RSA Security on September 6, 2000, two weeks earlier.[13] Since a paper describing the algorithm had been published in August 1977,[14] prior to the December 1977 filing date of the patent application, regulations in much of the rest of the world precluded patents elsewhere and only the US patent was granted. Had Cocks's work been publicly known, a patent in the United States would not have been legal either.

From the DWPI's abstract of the patent,


Operation

The RSA algorithm involves four steps: key generation, key distribution, encryption and decryption.

A basic principle behind RSA is the observation that it is practical to find three very large positive integers , and such that with modular exponentiation for all integers (with ):

$$(m^e)^d \equiv m \pmod{n}$$

and that even knowing and or even it can be extremely difficult to find . The triple bar (≡) here denotes modular congruence.

In addition, for some operations it is convenient that the order of the two exponentiations can be changed and that this relation also implies:

$$(m^d)^e \equiv m \pmod{n}$$

RSA involves a _public key_ and a _private key._ The public key can be known by everyone, and it is used for encrypting messages. The intention is that messages encrypted with the public key can only be decrypted in a reasonable amount of time by using the private key. The public key is represented by the integers and ; and, the private key, by the integer (although is also used during the decryption process. Thus, it might be considered to be a part of the private key, too). represents the message (previously prepared with a certain technique explained below).

Key generation

The keys for the RSA algorithm are generated the following way:

1.  Choose two distinct prime numbers _p_ and _q_.
    -   For security purposes, the integers _p_ and _q_ should be chosen at random, and should be similar in magnitude but differ in length by a few digits to make factoring harder.[15] Prime integers can be efficiently found using a primality test.
    -   _p_ and _q_ are kept secret.
2.  Compute .
    -   _n_ is used as the modulus for both the public and private keys. Its length, usually expressed in bits, is the key length.
    -   _n_ is released as part of the public key.
3.  Compute _λ_(_n_), where _λ_ is Carmichael's totient function. Since _n_ = _pq_, _λ_(_n_) = lcm(_λ_(_p_),_λ_(_q_)), and since _p_ and _q_ are prime, _λ_(_p_) = _φ_(_p_) = _p_ − 1 and likewise _λ_(_q_) = _q_ − 1. Hence _λ_(_n_) = lcm(_p_ − 1, _q_ − 1).
    -   _λ_(_n_) is kept secret.
4.  Choose an integer _e_ such that and ; that is, _e_ and _λ_(_n_) are coprime.
    -   _e_ having a short bit-length and small Hamming weight results in more efficient encryption the most commonly chosen value for _e_ is . The smallest (and fastest) possible value for _e_ is 3, but such a small value for _e_ has been shown to be less secure in some settings.

#*_e_ is released as part of the public key.

1.  Determine _d_ as ; that is, _d_ is the modular multiplicative inverse of _e_ modulo _λ_(_n_).
    -   This means: solve for _d_ the equation . _d_ can be computed efficiently by using the Extended Euclidean algorithm.
    -   _d_ is kept secret as the _private key exponent_.

The _public key_ consists of the modulus _n_ and the public (or encryption) exponent _e_. The _private key_ consists of the private (or decryption) exponent _d_, which must be kept secret. _p_, _q_, and _λ_(_n_) must also be kept secret because they can be used to calculate _d_. In fact, they can all be discarded after _d_ has been computed.[16]

In the original RSA paper,[17] the Euler totient function is used instead of _λ_(_n_) for calculating the private exponent _d_. Since _φ_(_n_) is always divisible by _λ_(_n_) the algorithm works as well. That the Euler totient function can be used can also be seen as a consequence of the Lagrange's theorem applied to the multiplicative group of integers modulo pq. Thus any _d_ satisfying also satisfies . However, computing _d_ modulo _φ_(_n_) will sometimes yield a result that is larger than necessary (i.e. ). Most of the implementations of RSA will accept exponents generated using either method (if they use the private exponent _d_ at all, rather than using the optimized decryption method based on the Chinese remainder theorem described below), but some standards like FIPS 186-4 may require that . Any "oversized" private exponents not meeting that criterion may always be reduced modulo _λ_(_n_) to obtain a smaller equivalent exponent.

Since any common factors of and are present in the factorisation of = = ,[18] it is recommended that and have only very small common factors, if any besides the necessary 2.[19][20][21][22]

Note: The authors of the original RSA paper carry out the key generation by choosing _d_ and then computing _e_ as the modular multiplicative inverse of _d_ modulo _φ_(_n_), whereas most current implementations of RSA, such as those following PKCS#1, do the reverse (choose _e_ and compute _d_). Since the chosen key can be small whereas the computed key normally is not, the RSA paper's algorithm optimizes decryption compared to encryption, while the modern algorithm optimizes encryption instead.[23][24]

Key distribution

Suppose that Bob wants to send information to Alice. If they decide to use RSA, Bob must know Alice's public key to encrypt the message and Alice must use her private key to decrypt the message. To enable Bob to send his encrypted messages, Alice transmits her public key to Bob via a reliable, but not necessarily secret, route. Alice's private key is never distributed.

Encryption

After Bob obtains Alice's public key, he can send a message to Alice.

To do it, he first turns (strictly speaking, the un-padded plaintext) into an integer (strictly speaking, the padded plaintext), such that by using an agreed-upon reversible protocol known as a padding scheme. He then computes the ciphertext , using Alice's public key , corresponding to

    $c \equiv m^e \pmod{n}$

This can be done reasonably quickly, even for very large numbers, using modular exponentiation. Bob then transmits to Alice.

Decryption

Alice can recover from by using her private key exponent by computing

$$c^d \equiv (m^e)^d \equiv m \pmod{n}$$

Given , she can recover the original message by reversing the padding scheme.

Example

Here is an example of RSA encryption and decryption. The parameters used here are artificially small, but one can also use OpenSSL to generate and examine a real keypair.

1.  Choose two distinct prime numbers, such as

        p = 61 and q = 53

2.  Compute giving

        n = 61 × 53 = 3233

3.  Compute the Carmichael's totient function of the product as giving

        λ(3233) = lcm (60, 52) = 780

4.  Choose any number that is coprime to 780. Choosing a prime number for _e_ leaves us only to check that _e_ is not a divisor of 780.

        Let e = 17

5.  Compute _d_, the modular multiplicative inverse of yielding,

        d = 413
        Worked example for the modular multiplicative inverse:
        d × e = 1mod λ(n)
        413 × 17 = 1mod 780

The PUBLIC KEY is (, ). For a padded plaintext message _m_, the encryption function is

_c_(_m_) = _m_¹⁷mod 3233

The PRIVATE KEY is (, ). For an encrypted ciphertext _c_, the decryption function is

_m_(_c_) = _c_⁴¹³mod 3233

For instance, in order to encrypt , we calculate

_c_ = 65¹⁷mod 3233 = 2790

To decrypt , we calculate

_m_ = 2790⁴¹³mod 3233 = 65

Both of these calculations can be computed efficiently using the square-and-multiply algorithm for modular exponentiation. In real-life situations the primes selected would be much larger; in our example it would be trivial to factor _n_, 3233 (obtained from the freely available public key) back to the primes _p_ and _q_. _e_, also from the public key, is then inverted to get _d_, thus acquiring the private key.

Practical implementations use the Chinese remainder theorem to speed up the calculation using modulus of factors (mod _pq_ using mod _p_ and mod _q_).

The values _d__(_p_), _d__(_q_) and _q__(inv), which are part of the private key are computed as follows:

    \begin{align}

          d_p = {} &d \bmod (p-1) = 413 \bmod (61-1) = 53 \\
          d_q = {} &d \bmod (q-1) = 413 \bmod (53-1) = 49 \\
 q_\text{inv} = {} &q^{-1} \bmod p = 53^{-1} \bmod 61 = 38 \\
    \Rightarrow {} &(q_\text{inv} \times q) \bmod p = 38 \times 53 \bmod 61= 1

\end{align}

Here is how _d__(_p_), _d__(_q_) and _q__(inv) are used for efficient decryption. (Encryption is efficient by choice of a suitable _d_ and _e_ pair)

    \begin{align}

 m_1 &= c^{d_p} \bmod p = 2790^{53} \bmod 61 = 4 \\
 m_2 &= c^{d_q} \bmod q = 2790^{49} \bmod 53 = 12 \\
   h &= (q_\text{inv} \times (m_1 - m_2)) \bmod p = (38 \times -8) \bmod 61 = 1 \\
   m &= m_2 + h \times q = 12 + 1 \times 53 = 65

\end{align}

Code

A working example in JavaScript using BigInteger.js. This code should not be used in production, as bigInt.randBetween() uses Math.random(), which is not a cryptographically secure pseudorandom number generator.[25]

    'use strict';

    /**
     * RSA hash function reference implementation.
     * Uses BigInteger.js https://github.com/peterolson/BigInteger.js
     * Code originally based on https://github.com/kubrickology/Bitcoin-explained/blob/master/RSA.js
     */
    const RSA = {};

    /**
     * Generates a k-bit RSA public/private key pair
     * https://en.wikipedia.org/wiki/RSA_(cryptosystem)#Code
     *
     * @param   {keysize} int, bitlength of desired RSA modulus n (should be even)
     * @returns {array} Result of RSA generation (object with three bigInt members: n, e, d)
     */
    RSA.generate = function(keysize) {
      /**
       * Generates a random k-bit prime greater than √2 × 2^(k-1)
       *
       * @param   {bits} int, bitlength of desired prime
       * @returns {bigInt} a random generated prime
       */
      function randomPrime(bits) {
        const min = bigInt(6074001000).shiftLeft(bits - 33);  // min ≈ √2 × 2^(bits - 1)
        const max = bigInt.one.shiftLeft(bits).minus(1);  // max = 2^(bits) - 1
        for (;;) {
          const p = bigInt.randBetween(min, max);  // WARNING: not a cryptographically secure RNG!
          if (p.isProbablePrime(256)) {
            return p;
          }
        }
      }

      // set up variables for key generation
      const e = bigInt(65537);  // use fixed public exponent
      let p;
      let q;
      let lambda;

      // generate p and q such that λ(n) = lcm(p − 1, q − 1) is coprime with e and |p-q| >= 2^(keysize/2 - 100)
      do {
        p = randomPrime(keysize / 2);
        q = randomPrime(keysize / 2);
        lambda = bigInt.lcm(p.minus(1), q.minus(1));
      } while (bigInt.gcd(e, lambda).notEquals(1) || p.minus(q).abs().shiftRight(
          keysize / 2 - 100).isZero());

      return {
        n: p.multiply(q),  // public key (part I)
        e: e,  // public key (part II)
        d: e.modInv(lambda),  // private key d = e^(-1) mod λ(n)
      };
    };

    /**
     * Encrypt
     *
     * @param   {m} int / bigInt: the 'message' to be encoded
     * @param   {n} int / bigInt: n value returned from RSA.generate() aka public key (part I)
     * @param   {e} int / bigInt: e value returned from RSA.generate() aka public key (part II)
     * @returns {bigInt} encrypted message
     */
    RSA.encrypt = function(m, n, e) {
      return bigInt(m).modPow(e, n);
    };

    /**
     * Decrypt
     *
     * @param   {c} int / bigInt: the 'message' to be decoded (encoded with RSA.encrypt())
     * @param   {d} int / bigInt: d value returned from RSA.generate() aka private key
     * @param   {n} int / bigInt: n value returned from RSA.generate() aka public key (part I)
     * @returns {bigInt} decrypted message
     */
    RSA.decrypt = function(c, d, n) {
      return bigInt(c).modPow(d, n);
    };

Signing messages

Suppose Alice uses Bob's public key to send him an encrypted message. In the message, she can claim to be Alice but Bob has no way of verifying that the message was actually from Alice since anyone can use Bob's public key to send him encrypted messages. In order to verify the origin of a message, RSA can also be used to sign a message.

Suppose Alice wishes to send a signed message to Bob. She can use her own private key to do so. She produces a hash value of the message, raises it to the power of _d_ (modulo _n_) (as she does when decrypting a message), and attaches it as a "signature" to the message. When Bob receives the signed message, he uses the same hash algorithm in conjunction with Alice's public key. He raises the signature to the power of _e_ (modulo _n_) (as he does when encrypting a message), and compares the resulting hash value with the message's actual hash value. If the two agree, he knows that the author of the message was in possession of Alice's private key, and that the message has not been tampered with since.

This works because multiplication is commutative so $h=hash(m);
(h^e)^d = h^{ed}= h^{de}=(h^d)^e \equiv h \pmod{n}$ Thus, the keys may be swapped without loss of generality, that is a private key of a key pair may be used either to:

1.  Decrypt a message only intended for the recipient, which may be encrypted by anyone having the public key (asymmetric encrypted transport).
2.  Encrypt a message which may be decrypted by anyone, but which can only be encrypted by one person (signature).


Proofs of correctness

Proof using Fermat's little theorem

The proof of the correctness of RSA is based on Fermat's little theorem, stating that for any integer _a_ and prime _p_, not dividing _a_.

We want to show that

    $(m^e)^d \equiv m \pmod{pq}$

for every integer _m_ when _p_ and _q_ are distinct prime numbers and _e_ and _d_ are positive integers satisfying .

Since is, by construction, divisible by both and , we can write

    ed − 1 = h(p − 1) = k(q − 1)

for some nonnegative integers _h_ and _k_.

To check whether two numbers, like _m^(ed)_ and _m_, are congruent mod _pq_, it suffices (and in fact is equivalent) to check that they are congruent mod _p_ and mod _q_ separately.

To show , we consider two cases:

1.  If , _m_ is a multiple of _p_. Thus _m^(ed)_ is a multiple of _p_. So .
2.  If ,



        $m^{ed} = m^{ed - 1} m = m^{h(p - 1)} m = (m^{p - 1})^h m \equiv 1^h m \equiv m \pmod{p},$
        where we used Fermat's little theorem to replace with 1.

The verification that proceeds in a completely analogous way:

1.  If , _m^(ed)_ is a multiple of _q_. So .
2.  If ,



        $m^{ed} = m^{ed - 1} m = m^{k(q - 1)} m = (m^{q - 1})^k m \equiv 1^k m \equiv m \pmod{q}.$

This completes the proof that, for any integer _m_, and integers _e_, _d_ such that ,

    $(m^e)^d \equiv m \pmod{pq}.$

_Notes:_

Proof using Euler's theorem

Although the original paper of Rivest, Shamir, and Adleman used Fermat's little theorem to explain why RSA works, it is common to find proofs that rely instead on Euler's theorem.

We want to show that , where is a product of two different prime numbers and _e_ and _d_ are positive integers satisfying . Since _e_ and _d_ are positive, we can write for some non-negative integer _h_. _Assuming_ that _m_ is relatively prime to _n_, we have

    $m^{ed} = m^{1 + h\varphi(n)} = m (m^{\varphi(n)})^{h} \equiv m (1)^{h} \equiv m \pmod{n}$

where the second-last congruence follows from Euler's theorem.

More generally, for any _e_ and _d_ satisfying , the same conclusion follows from Carmichael's generalization of Euler's theorem, which states that for all _m_ relatively prime to _n_.

When _m_ is not relatively prime to _n_, the argument just given is invalid. This is highly improbable (only a proportion of numbers have this property), but even in this case the desired congruence is still true. Either or , and these cases can be treated using the previous proof.


Padding

Attacks against plain RSA

There are a number of attacks against plain RSA as described below.

-   When encrypting with low encryption exponents (e.g., ) and small values of the _m_, (i.e., ) the result of is strictly less than the modulus _n_. In this case, ciphertexts can be easily decrypted by taking the _e_th root of the ciphertext over the integers.
-   If the same clear text message is sent to _e_ or more recipients in an encrypted way, and the receivers share the same exponent _e_, but different _p_, _q_, and therefore _n_, then it is easy to decrypt the original clear text message via the Chinese remainder theorem. Johan Håstad noticed that this attack is possible even if the cleartexts are not equal, but the attacker knows a linear relation between them.[26] This attack was later improved by Don Coppersmith.[27]

-   Because RSA encryption is a deterministic encryption algorithm (i.e., has no random component) an attacker can successfully launch a chosen plaintext attack against the cryptosystem, by encrypting likely plaintexts under the public key and test if they are equal to the ciphertext. A cryptosystem is called semantically secure if an attacker cannot distinguish two encryptions from each other, even if the attacker knows (or has chosen) the corresponding plaintexts. As described above, RSA without padding is not semantically secure.[28]
-   RSA has the property that the product of two ciphertexts is equal to the encryption of the product of the respective plaintexts. That is . Because of this multiplicative property a chosen-ciphertext attack is possible. E.g., an attacker who wants to know the decryption of a ciphertext may ask the holder of the private key _d_ to decrypt an unsuspicious-looking ciphertext for some value _r_ chosen by the attacker. Because of the multiplicative property _c_′ is the encryption of . Hence, if the attacker is successful with the attack, he will learn from which he can derive the message _m_ by multiplying _mr_ with the modular inverse of _r_ modulo _n_.

Padding schemes

To avoid these problems, practical RSA implementations typically embed some form of structured, randomized padding into the value _m_ before encrypting it. This padding ensures that _m_ does not fall into the range of insecure plaintexts, and that a given message, once padded, will encrypt to one of a large number of different possible ciphertexts.

Standards such as PKCS#1 have been carefully designed to securely pad messages prior to RSA encryption. Because these schemes pad the plaintext _m_ with some number of additional bits, the size of the un-padded message _M_ must be somewhat smaller. RSA padding schemes must be carefully designed so as to prevent sophisticated attacks which may be facilitated by a predictable message structure. Early versions of the PKCS#1 standard (up to version 1.5) used a construction that appears to make RSA semantically secure. However, at Crypto 1998, Bleichenbacher showed that this version is vulnerable to a practical adaptive chosen ciphertext attack. Furthermore, at Eurocrypt 2000, Coron et al. showed that for some types of messages, this padding does not provide a high enough level of security. Later versions of the standard include Optimal Asymmetric Encryption Padding (OAEP), which prevents these attacks. As such, OAEP should be used in any new application, and PKCS#1 v1.5 padding should be replaced wherever possible. The PKCS#1 standard also incorporates processing schemes designed to provide additional security for RSA signatures, e.g. the Probabilistic Signature Scheme for RSA (RSA-PSS).

Secure padding schemes such as RSA-PSS are as essential for the security of message signing as they are for message encryption. Two US patents on PSS were granted (USPTO 6266771 and USPTO 70360140); however, these patents expired on 24 July 2009 and 25 April 2010, respectively. Use of PSS no longer seems to be encumbered by patents. Note that using different RSA key-pairs for encryption and signing is potentially more secure.[29]


Security and practical considerations

Using the Chinese remainder algorithm

For efficiency many popular crypto libraries (like OpenSSL, Java and .NET) use the following optimization for decryption and signing based on the Chinese remainder theorem. The following values are precomputed and stored as part of the private key:

-   p and q: the primes from the key generation,
-   $d_P = d \pmod{p - 1}$,
-   $d_Q = d \pmod{q - 1}$ and
-   $q_\text{inv} = q^{-1} \pmod{p}$.

These values allow the recipient to compute the exponentiation more efficiently as follows:

-   $m_1 = c^{d_P} \pmod{p}$
-   $m_2 = c^{d_Q} \pmod{q}$
-   $h = q_\text{inv}(m_1 - m_2) \pmod{p}$ (if m₁ < m₂ then some libraries compute _h_ as $q_\text{inv}\left[\left(m_1 + \left\lceil \frac{q}{p} \right\rceil p\right) - m_2\right] \pmod{p}$)
-   m = m₂ + hq 

This is more efficient than computing exponentiation by squaring even though two modular exponentiations have to be computed. The reason is that these two modular exponentiations both use a smaller exponent and a smaller modulus.

Integer factorization and RSA problem

The security of the RSA cryptosystem is based on two mathematical problems: the problem of factoring large numbers and the RSA problem. Full decryption of an RSA ciphertext is thought to be infeasible on the assumption that both of these problems are hard, i.e., no efficient algorithm exists for solving them. Providing security against _partial_ decryption may require the addition of a secure padding scheme.[30]

The RSA problem is defined as the task of taking _e_th roots modulo a composite _n_: recovering a value _m_ such that , where is an RSA public key and _c_ is an RSA ciphertext. Currently the most promising approach to solving the RSA problem is to factor the modulus _n_. With the ability to recover prime factors, an attacker can compute the secret exponent _d_ from a public key , then decrypt _c_ using the standard procedure. To accomplish this, an attacker factors _n_ into _p_ and _q_, and computes which allows the determination of _d_ from _e_. No polynomial-time method for factoring large integers on a classical computer has yet been found, but it has not been proven that none exists. _See integer factorization for a discussion of this problem_.

Multiple polynomial quadratic sieve (MPQS) can be used to factor the public modulus _n_. The time taken to factor 128-bit and 256-bit _n_ on a desktop computer are respectively 2 seconds and 35 minutes.

  Bits   Time
  ------ ---------------------
  128    Less than 2 seconds
  192    16 seconds
  256    35 minutes
  260    1 hour

A tool called YAFU can be used to optimize this process.[31] It took about 5720s to factor _320bit-N_ on the same computer.

  Bits   Time                Memory used
  ------ ------------------- -------------
  128    0.4886 seconds      0.1 MiB
  192    3.9979 seconds      0.5 MiB
  256    103.1746 seconds    3 MiB
  300    1175.7826 seconds   10.9 MiB

In 2009, Benjamin Moody factored an RSA-512 bit key in 73 days using only public software (GGNFS) and his desktop computer (a dual-core Athlon64 with a 1,900 MHz cpu.). Just less than five gigabytes of disk storage was required and about 2.5 gigabytes of RAM for the sieving process. The first RSA-512 factorization in 1999 required the equivalent of 8,400 MIPS years, over an elapsed time of about seven months.[32]

Rivest, Shamir, and Adleman noted[33] that Miller has shown that – assuming the truth of the Extended Riemann Hypothesis – finding _d_ from _n_ and _e_ is as hard as factoring _n_ into _p_ and _q_ (up to a polynomial time difference).[34] However, Rivest, Shamir, and Adleman noted, in section IX/D of their paper, that they had not found a proof that inverting RSA is equally as hard as factoring.

, the largest factored RSA number was 768 bits long (232 decimal digits, see RSA-768). Its factorization, by a state-of-the-art distributed implementation, took around fifteen hundred CPU years (two years of real time, on many hundreds of computers). No larger RSA key is known publicly to have been factored. In practice, RSA keys are typically 1024 to 4096 bits long. Some experts believe that 1024-bit keys may become breakable in the near future or may already be breakable by a sufficiently well-funded attacker, though this is disputable. Few people see any way that 4096-bit keys could be broken in the foreseeable future. Therefore, it is generally presumed that RSA is secure if _n_ is sufficiently large. If _n_ is 300 bits or shorter, it can be factored in a few hours in a personal computer, using software already freely available. Keys of 512 bits have been shown to be practically breakable in 1999 when RSA-155 was factored by using several hundred computers, and these are now factored in a few weeks using common hardware. Exploits using 512-bit code-signing certificates that may have been factored were reported in 2011.[35] A theoretical hardware device named TWIRL, described by Shamir and Tromer in 2003, called into question the security of 1024 bit keys. It is currently recommended that _n_ be at least 2048 bits long.[36]

In 1994, Peter Shor showed that a quantum computer – if one could ever be practically created for the purpose – would be able to factor in polynomial time, breaking RSA; see Shor's algorithm.

Faulty key generation

Finding the large primes _p_ and _q_ is usually done by testing random numbers of the right size with probabilistic primality tests that quickly eliminate virtually all of the nonprimes.

The numbers _p_ and _q_ should not be "too close", lest the Fermat factorization for _n_ be successful. If _p_ − _q_ is less than 2_n_^(1/4) (_n_ = _p_ * _q_, which for even small 1024-bit values of _n_ is ) solving for _p_ and _q_ is trivial. Furthermore, if either _p_ − 1 or _q_ − 1 has only small prime factors, _n_ can be factored quickly by Pollard's p − 1 algorithm, and such values of _p_ or _q_ should hence be discarded.

It is important that the private exponent _d_ be large enough. Michael J. Wiener showed that if _p_ is between _q_ and 2_q_ (which is quite typical) and , then _d_ can be computed efficiently from _n_ and _e_.[37]

There is no known attack against small public exponents such as , provided that the proper padding is used. Coppersmith's Attack has many applications in attacking RSA specifically if the public exponent _e_ is small and if the encrypted message is short and not padded. 65537 is a commonly used value for _e_; this value can be regarded as a compromise between avoiding potential small exponent attacks and still allowing efficient encryptions (or signature verification). The NIST Special Publication on Computer Security (SP 800-78 Rev 1 of August 2007) does not allow public exponents _e_ smaller than 65537, but does not state a reason for this restriction.

In October 2017 a team of researchers from Masaryk University announced the ROCA vulnerability, which affects RSA keys generated by an algorithm embodied in a library from Infineon. Large number of smart cards and TPMs were shown to be affected. Vulnerable RSA keys are easily identified using a test program the team released.[38]

Importance of strong random number generation

A cryptographically strong random number generator, which has been properly seeded with adequate entropy, must be used to generate the primes _p_ and _q_. An analysis comparing millions of public keys gathered from the Internet was carried out in early 2012 by Arjen K. Lenstra, James P. Hughes, Maxime Augier, Joppe W. Bos, Thorsten Kleinjung and Christophe Wachter. They were able to factor 0.2% of the keys using only Euclid's algorithm.[39][40]

They exploited a weakness unique to cryptosystems based on integer factorization. If is one public key and is another, then if by chance (but _q_ is not equal to _q_′), then a simple computation of factors both _n_ and _n_′, totally compromising both keys. Lenstra et al. note that this problem can be minimized by using a strong random seed of bit-length twice the intended security level, or by employing a deterministic function to choose _q_ given _p_, instead of choosing _p_ and _q_ independently.

Nadia Heninger was part of a group that did a similar experiment. They used an idea of Daniel J. Bernstein to compute the GCD of each RSA key _n_ against the product of all the other keys _n_′ they had found (a 729 million digit number), instead of computing each gcd(_n_,_n_′) separately, thereby achieving a very significant speedup since after one large division the GCD problem is of normal size.

Heninger says in her blog that the bad keys occurred almost entirely in embedded applications, including "firewalls, routers, VPN devices, remote server administration devices, printers, projectors, and VOIP phones" from over 30 manufacturers. Heninger explains that the one-shared-prime problem uncovered by the two groups results from situations where the pseudorandom number generator is poorly seeded initially and then reseeded between the generation of the first and second primes. Using seeds of sufficiently high entropy obtained from key stroke timings or electronic diode noise or atmospheric noise from a radio receiver tuned between stations should solve the problem.[41]

Strong random number generation is important throughout every phase of public key cryptography. For instance, if a weak generator is used for the symmetric keys that are being distributed by RSA, then an eavesdropper could bypass RSA and guess the symmetric keys directly.

Timing attacks

Kocher described a new attack on RSA in 1995: if the attacker Eve knows Alice's hardware in sufficient detail and is able to measure the decryption times for several known ciphertexts, she can deduce the decryption key _d_ quickly. This attack can also be applied against the RSA signature scheme. In 2003, Boneh and Brumley demonstrated a more practical attack capable of recovering RSA factorizations over a network connection (e.g., from a Secure Sockets Layer (SSL)-enabled webserver)[42] This attack takes advantage of information leaked by the Chinese remainder theorem optimization used by many RSA implementations.

One way to thwart these attacks is to ensure that the decryption operation takes a constant amount of time for every ciphertext. However, this approach can significantly reduce performance. Instead, most RSA implementations use an alternate technique known as cryptographic blinding. RSA blinding makes use of the multiplicative property of RSA. Instead of computing , Alice first chooses a secret random value _r_ and computes . The result of this computation after applying Euler's Theorem is and so the effect of _r_ can be removed by multiplying by its inverse. A new value of _r_ is chosen for each ciphertext. With blinding applied, the decryption time is no longer correlated to the value of the input ciphertext and so the timing attack fails.

Adaptive chosen ciphertext attacks

In 1998, Daniel Bleichenbacher described the first practical adaptive chosen ciphertext attack, against RSA-encrypted messages using the PKCS #1 v1 padding scheme (a padding scheme randomizes and adds structure to an RSA-encrypted message, so it is possible to determine whether a decrypted message is valid). Due to flaws with the PKCS #1 scheme, Bleichenbacher was able to mount a practical attack against RSA implementations of the Secure Socket Layer protocol, and to recover session keys. As a result of this work, cryptographers now recommend the use of provably secure padding schemes such as Optimal Asymmetric Encryption Padding, and RSA Laboratories has released new versions of PKCS #1 that are not vulnerable to these attacks.

Side-channel analysis attacks

A side-channel attack using branch prediction analysis (BPA) has been described. Many processors use a branch predictor to determine whether a conditional branch in the instruction flow of a program is likely to be taken or not. Often these processors also implement simultaneous multithreading (SMT). Branch prediction analysis attacks use a spy process to discover (statistically) the private key when processed with these processors.

Simple Branch Prediction Analysis (SBPA) claims to improve BPA in a non-statistical way. In their paper, "On the Power of Simple Branch Prediction Analysis",[43] the authors of SBPA (Onur Aciicmez and Cetin Kaya Koc) claim to have discovered 508 out of 512 bits of an RSA key in 10 iterations.

A power fault attack on RSA implementations has been described in 2010.[44] The author recovered the key by varying the CPU power voltage outside limits; this caused multiple power faults on the server.

Rainbow tables attacks

The generated primes can be attacked by rainbow tables because the random numbers are fixed and finite sets.[45]


Implementations

Below are some cryptography libraries that provide support for RSA:

-   Botan
-   Bouncy Castle
-   cryptlib
-   Crypto++
-   Libgcrypt
-   Nettle
-   OpenSSL
-   wolfCrypt


See also

-   Acoustic cryptanalysis
-   Computational complexity theory
-   Cryptographic key length
-   Diffie–Hellman key exchange
-   Key exchange
-   Key management
-   Public-key cryptography
-   Trapdoor function


References


Further reading

-   -


External links

-   The Original RSA Patent as filed with the U.S. Patent Office by Rivest; Ronald L. (Belmont, MA), Shamir; Adi (Cambridge, MA), Adleman; Leonard M. (Arlington, MA), December 14, 1977, .
-   PKCS #1: RSA Cryptography Standard (RSA Laboratories website)
    -   The _PKCS #1_ standard _"provides recommendations for the implementation of public-key cryptography based on the RSA algorithm, covering the following aspects: cryptographic primitives; encryption schemes; signature schemes with appendix; ASN.1 syntax for representing keys and for identifying the schemes"_.
-   -   Thorough walk through of RSA
-   Prime Number Hide-And-Seek: How the RSA Cipher Works
-   Onur Aciicmez, Cetin Kaya Koc, Jean-Pierre Seifert: _On the Power of Simple Branch Prediction Analysis_
-   A New Vulnerability In RSA Cryptography, CAcert NEWS Blog
-   Example of an RSA implementation with PKCS#1 padding (GPL source code)
-   Kocher's article about timing attacks
-   An animated explanation of RSA with its mathematical background by CrypTool
-   _Hacking Secret Ciphers with Python_, Chapter 24, Public Key Cryptography and the RSA Cipher
-   -   How RSA Key used for Encryption in real world

Category:Public-key encryption schemes Category:Digital signature schemes Category:E-commerce

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Jim Sauerberg "From Private to Public Key Ciphers in Three Easy Steps".

[9] Margaret Cozzens and Steven J. Miller. "The Mathematics of Encryption: An Elementary Introduction". p. 180.

[10] Alasdair McAndrew. "Introduction to Cryptography with Open-Source Software". p. 12.

[11] Surender R. Chiluka. "Public key Cryptography".

[12] Neal Koblitz. "Cryptography As a Teaching Tool". Cryptologia, Vol. 21, No. 4 (1997).

[13]

[14]

[15]

[16] Applied Cryptography, John Wiley & Sons, New York, 1996. Bruce Schneier, p.467

[17]

[18]

[19]

[20] A Course in Number Theory and Cryptography, Graduate Texts in Math. No. 114, Springer-Verlag, New York, 1987. Neal Koblitz, Second edition, 1994. p. 94

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28] S. Goldwasser and S. Micali, Probabilistic encryption & how to play mental poker keeping secret all partial information, Annual ACM Symposium on Theory of Computing, 1982.

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45] 现实RSA算法的破解