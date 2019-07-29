In chemistry, biochemistry, and pharmacology, a DISSOCIATION CONSTANT (K_(d)) is a specific type of equilibrium constant that measures the propensity of a larger object to separate (dissociate) reversibly into smaller components, as when a complex falls apart into its component molecules, or when a salt splits up into its component ions. The dissociation constant is the inverse of the association constant. In the special case of salts, the dissociation constant can also be called an ionization constant.

For a general reaction:



A_\mathit{x} B_\mathit{y} <=> \mathit{x} A{} + \mathit{y} B

in which a complex $\ce{A}_x \ce{B}_y$ breaks down into _x_ A subunits and _y_ B subunits, the dissociation constant is defined



K_d = \frac{[\ce A]^x [\ce B]^y}{[\ce A_x \ce B_y]}

where [A], [B], and [A_(x)B_(y)] are the equilibrium concentrations of A, B, and the complex A_(x)B_(y), respectively.

One reason for the popularity of the dissociation constant in biochemistry and pharmacology is that in the frequently encountered case where x=y=1, K_(d) has a simple physical interpretation: when $[\ce A] = K_d$, $[\ce B] = [\ce {AB}]$ or equivalently $\tfrac {[\ce{AB}]}{{[\ce B]} + [\ce{AB}]} = \tfrac{1}{2}$. That is, K_(d), which has the dimensions of concentration, equals the concentration of free A at which half of the total molecules of B are associated with A. This simple interpretation does not apply for higher values of x or y. It also presumes the absence of competing reactions, though the derivation can be extended to explicitly allow for and describe competitive binding. It is useful as a quick description of the binding of a substance, in the same way that EC50 and IC50 describe the biological activities of substances.


Concentration of bound molecules

Molecules with one binding site

Experimentally, the concentration of the molecule complex [AB] is obtained indirectly from the measurement of the concentration of a free molecules, either [A] or [B].[1] In principle, the total amounts of molecule [A]₀ and [B]₀ added to the reaction are known. They separate into free and bound components according to the mass conservation principle:

    \begin{align}

 \ce{[A]_0} &= \ce{{[A]} + [AB]} \\
 \ce{[B]_0} &= \ce{{[B]} + [AB]}

\end{align}

To track the concentration of the complex [AB], one substitutes the concentration of the free molecules ([A] or [B]), of the respective conservation equations, by the definition of the dissociation constant,



[\ce A]_0 = K_d \frac{[\ce{AB}]}{[\ce B]} + [\ce{AB}]

This yields the concentration of the complex related to the concentration of either one of the free molecules



\ce{[AB]} = \frac\ce{[A]_0 [B]}{K_d + [\ce B]} = \frac\ce{[B]_0 [A]}{K_d + [\ce A]}

Macromolecules with identical independent binding sites

Many biological proteins and enzymes can possess more than one binding site.[2] Usually, when a ligand binds with a macromolecule , it can influence binding kinetics of other ligands binding to the macromolecule. A simplified mechanism can be formulated if the affinity of all binding sites can be considered independent of the number of ligands bound to the macromolecule. This is valid for macromolecules composed of more than one, mostly identical, subunits. It can be then assumed that each of these subunits are identical, symmetric and that they possess only one single binding site. Then, the concentration of bound ligands [L]_{bound} becomes



\ce{[L]}_\text{bound} = \frac{n\ce{[M]}_0 \ce{[L]}}{K_d + \ce{[L]}}

In this case, $\ce{[L]}_\text{bound} \neq \ce{[LM]}$, but comprises all partially saturated forms of the macromolecule:



\ce{[L]}_\text{bound} = \ce{[LM]} + \ce{2[L_2 M]} + \ce{3[L_3 M]} + \ldots + n \ce{[L_\mathit{n} M]}  

where the saturation occurs stepwise

    \begin{align}

                 \ce{{[L]} + [M]} &\ce{{} <=> {[LM]}}             & K'_1 &= \frac\ce{[L][M]}{[LM]}              & \ce{[LM]}       &= \frac\ce{[L][M]}{K'_1} \\
                \ce{{[L]} + [LM]} &\ce{{} <=> {[L2 M]}}           & K'_2 &= \frac\ce{[L][LM]}{[L_2 M]}          & \ce{[L_2 M]}    &= \frac\ce{[L]^2[M]}{K'_1 K'_2} \\
              \ce{{[L]} + [L2 M]} &\ce{{} <=> {[L3 M]}}           & K'_3 &= \frac\ce{[L][L_2 M]}{[L_3 M]}       & \ce{[L_3 M]}    &= \frac\ce{[L]^3[M]}{K'_1 K'_2 K'_3} \\
                                  & \vdots                        &      & \vdots                               &                 & \vdots \\
\ce{{[L]} + [L_\mathit{n - 1} M]} &\ce{{} <=> {[L_\mathit{n} M]}} & K'_n &= \frac\ce{[L][L_{n - 1} M]}{[L_n M]} & [\ce L_n \ce M] &= \frac{[\ce L]^n[\ce M]}{K'_1 K'_2 K'_3 \cdots K'_n}

\end{align}

For the derivation of the general binding equation a saturation function r is defined as the quotient from the portion of bound ligand to the total amount of the macromolecule:



 r = \frac\ce{[L]_{bound}}\ce{[M]_0} 
   = \frac\ce{{[LM]} + {2[L_2 M]} + {3[L_3 M]} + ... + \mathit n[L_\mathit{n} M]}\ce{{[M]} + {[LM]} + {[L_2 M]} + {[L_3 M]} + ... + [L_\mathit{n} M]}
   = \frac{\sum_{i=1}^n \left( \frac{i [\ce L]^i}{\prod_{j=1}^i K_j'} \right) }{1 + \sum_{i=1}^n \left( \frac{[\ce L]^i}{\prod_{j=1}^i K_j'} \right)}

Even if all microscopic dissociation constants are identical, they differ from the macroscopic ones and there are differences between each binding step. The general relationship between both types of dissociation constants for n binding sites is



K_i'  = K_d \frac{i}{n - i + 1}

Hence, the ratio of bound ligand to macromolecules becomes



 r = \frac{\sum_{i=1}^n i \left( \prod_{j=1}^i \frac{n - j + 1}{j} \right) \left( \frac\ce{[L]}{K_d} \right)^i }{1 + \sum_{i=1}^n \left( \prod_{j=1}^i \frac{n - j + 1}{j} \right) \left( \frac{[L]}{K_d} \right)^i}
   = \frac{\sum_{i=1}^n i \binom{n}{i} \left( \frac{[L]}{K_d} \right)^i }{1 + \sum_{i=1}^n \binom{n}{i} \left( \frac\ce{[L]}{K_d} \right)^i}

where $\binom{n}{i} = \frac{n!}{(n - i)!i!}$ is the binomial coefficient. Then, the first equation is proved by applying the binomial rule



 r = \frac{n \left( \frac\ce{[L]}{K_d} \right) \left(1 + \frac\ce{[L]}{K_d} \right)^{n - 1} }{\left(1 + \frac\ce{[L]}{K_d} \right)^n}
   = \frac{n \left( \frac\ce{[L]}{K_d} \right) }{\left(1 + \frac\ce{[L]}{K_d} \right)}
   = \frac{n [\ce L]}{K_d + [\ce L]}
   = \frac\ce{[L]_{bound}}\ce{[M]_0}


Protein-ligand binding

The dissociation constant is commonly used to describe the affinity between a ligand L (such as a drug) and a protein P; i.e., how tightly a ligand binds to a particular protein. Ligand-protein affinities are influenced by non-covalent intermolecular interactions between the two molecules such as hydrogen bonding, electrostatic interactions, hydrophobic and van der Waals forces. Affinities can also be affected by high concentrations of other macromolecules, which causes macromolecular crowding.[3][4]

The formation of a ligand-protein complex LP can be described by a two-state process



L + P <=> LP

the corresponding dissociation constant is defined



K_d = \frac{\left[ \ce{L} \right] \left[ \ce{P} \right]}{\left[ \ce{LP} \right]}

where [P], [L] and [LP] represent molar concentrations of the protein, ligand and complex, respectively.

The dissociation constant has molar units (M) and corresponds to the ligand concentration [L] at which half of the proteins are occupied at equilibrium [5], i.e., the concentration of ligand at which the concentration of protein with ligand bound [LP] equals the concentration of protein with no ligand bound [P]. The smaller the dissociation constant, the more tightly bound the ligand is, or the higher the affinity between ligand and protein. For example, a ligand with a nanomolar (nM) dissociation constant binds more tightly to a particular protein than a ligand with a micromolar (μM) dissociation constant.

Sub-picomolar dissociation constants as a result of non-covalent binding interactions between two molecules are rare. Nevertheless, there are some important exceptions. Biotin and avidin bind with a dissociation constant of roughly 10^(−15) M = 1 fM = 0.000001 nM.[6] Ribonuclease inhibitor proteins may also bind to ribonuclease with a similar 10^(−15) M affinity.[7] The dissociation constant for a particular ligand-protein interaction can change significantly with solution conditions (e.g., temperature, pH and salt concentration). The effect of different solution conditions is to effectively modify the strength of any intermolecular interactions holding a particular ligand-protein complex together.

Drugs can produce harmful side effects through interactions with proteins for which they were not meant to or designed to interact. Therefore, much pharmaceutical research is aimed at designing drugs that bind to only their target proteins (Negative Design) with high affinity (typically 0.1-10 nM) or at improving the affinity between a particular drug and its _in-vivo_ protein target (Positive Design).

Antibodies

In the specific case of antibodies (Ab) binding to antigen (Ag), usually the term AFFINITY CONSTANT refers to the association constant.



Ab + Ag <=> AbAg 



K_a = \frac{\left[ \ce{AbAg} \right]}{\left[ \ce{Ab} \right] \left[ \ce{Ag} \right]} = \frac{1}{K_d} 

This chemical equilibrium is also the ratio of the on-rate (k_(forward)) and off-rate (k_(back)) constants. Two antibodies can have the same affinity, but one may have both a high on- and off-rate constant, while the other may have both a low on- and off-rate constant.



K_a = \frac{k_\text{forward}}{k_\text{back}} = \frac{\mbox{on-rate}}{\mbox{off-rate}}


Acid–base reactions

For the deprotonation of acids, _K_ is known as _K__(a), the acid dissociation constant. Stronger acids, for example sulfuric or phosphoric acid, have larger dissociation constants; weaker acids, like acetic acid, have smaller dissociation constants.

(The symbol K_(a), used for the acid dissociation constant, can lead to confusion with the association constant and it may be necessary to see the reaction or the equilibrium expression to know which is meant.)

Acid dissociation constants are sometimes expressed by pK_(a), which is defined as:



\text{p}K_a = -\log_{10}{K_a}

This pK notation is seen in other contexts as well; it is mainly used for covalent dissociations (i.e., reactions in which chemical bonds are made or broken) since such dissociation constants can vary greatly.

A molecule can have several acid dissociation constants. In this regard, that is depending on the number of the protons they can give up, we define _monoprotic_, _diprotic_ and _triprotic_ acids. The first (e.g., acetic acid or ammonium) have only one dissociable group, the second (carbonic acid, bicarbonate, glycine) have two dissociable groups and the third (e.g., phosphoric acid) have three dissociable groups. In the case of multiple p_K_ values they are designated by indices: p_K_₁, p_K_₂, p_K_₃ and so on. For amino acids, the p_K_₁ constant refers to its carboxyl (-COOH) group, p_K_₂ refers to its amino (-NH₂) group and the p_K_₃ is the p_K_ value of its side chain.

    \begin{align}

     \ce{H3 B} &\ce{{} <=> {H+} + {H2 B^-}}   & K_1 &= \ce{[H+] . [H2 B^-] \over [H3 B]}      & \mathrm{p}K_1 &= -\log K_1 \\
   \ce{H2 B^-} &\ce{{} <=> {H+} + {H B^{-2}}} & K_2 &= \ce{[H+] . [H B ^{-2}] \over [H2 B^-]} & \mathrm{p}K_2 &= -\log K_2 \\
 \ce{H B^{-2}} &\ce{{} <=> {H+} + {B^{-3}}}   & K_3 &= \ce{[H+] . [B^{-3}] \over [H B^{-2}]}  & \mathrm{p}K_3 &= -\log K_3 

\end{align}


Dissociation constant of water

The dissociation constant of water is denoted _K__(w):

    $K_w = [\ce{H}^+] [\ce{OH}^-]$

The concentration of water H2O is omitted by convention, which means that the value of _K__(w) differs from the value of _K__(eq) that would be computed using that concentration.

The value of _K__(w) varies with temperature, as shown in the table below. This variation must be taken into account when making precise measurements of quantities such as pH.

  Water temperature   K_(w) / 10^(−14)   pK_(w)[8]
  ------------------- ------------------ -----------
  0 °C                0.112              14.95
  25 °C               1.023              13.99
  50 °C               5.495              13.26
  75 °C               19.95              12.70
  100 °C              56.23              12.25


See also

-   Acid
-   Equilibrium constant
-   _K__(i) Database
-   Competitive inhibition
-   pH
-   Scatchard plot
-   Ligand binding


References

Category:Equilibrium chemistry Category:Enzyme kinetics

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]