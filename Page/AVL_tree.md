AVL_Tree_Example.gif AVL-tree-wBalance_K.svg

In computer science, an AVL TREE (named after inventors Adelson-Velsky and Landis) is a self-balancing binary search tree. It was the first such data structure to be invented.[1] In an AVL tree, the heights of the two child subtrees of any node differ by at most one; if at any time they differ by more than one, rebalancing is done to restore this property. Lookup, insertion, and deletion all take time in both the average and worst cases, where n is the number of nodes in the tree prior to the operation. Insertions and deletions may require the tree to be rebalanced by one or more tree rotations.

The AVL tree is named after its two Soviet inventors, Georgy Adelson-Velsky and Evgenii Landis, who published it in their 1962 paper "An algorithm for the organization of information".[2]

AVL trees are often compared with red–black trees because both support the same set of operations and take O(log n) time for the basic operations. For lookup-intensive applications, AVL trees are faster than red–black trees because they are more strictly balanced.[3] Similar to red–black trees, AVL trees are height-balanced. Both are, in general, neither weight-balanced nor μ-balanced for any $\mu\leq\tfrac{1}{2}$AVL trees are not weight-balanced? (meaning: AVL trees are not μ-balanced?)
Thereby: A Binary Tree is called μ-balanced, with $0 \le\mu\leq\tfrac12$, if for every node N, the inequality

    $\tfrac12-\mu\le\tfrac{|N_l|}{|N|+1}\le \tfrac12+\mu$

holds and μ is minimal with this property. |N| is the number of nodes below the tree with N as root (including the root) and N_(l) is the left child node of N.; that is, sibling nodes can have hugely differing numbers of descendants.


Definition

Balance factor

In a binary tree the _balance factor_ of a node N is defined to be the height difference

BalanceFactor(_N_) := Height(RightSubtree(_N_)) − Height(LeftSubtree(_N_))
[4]

of its two child sub-trees. A binary tree is defined to be an _AVL tree_ if the invariant

BalanceFactor(_N_) ∈ { − 1, 0, 1}
[5]

holds for every node N in the tree.

A node N with BalanceFactor(N) < 0 is called "left-heavy", one with BalanceFactor(N) > 0 is called "right-heavy", and one with BalanceFactor(N) = 0 is sometimes simply called "balanced".

Remark

In what follows, because there is a one-to-one correspondence between nodes and the sub-trees rooted by them, the name of an object is sometimes used to refer to the node and sometimes used to refer to the sub-tree.

Properties

Balance factors can be kept up-to-date by knowing the previous balance factors and the change in height – it is not necessary to know the absolute height. For holding the AVL balance information in the traditional way, two bits per node are sufficient. However, later research showed if the AVL tree is implemented as a rank balanced tree with delta ranks allowed of 1 or 2 – with meaning "when going upward there is an additional increment in height of one or two", this can be done with one bit.

The height h of an AVL tree with n nodes lies in the interval:[6]

log₂(_n_ + 1) ≤ _h_ < _c_log₂(_n_ + 2) + _b_
with the golden ratio √, ,  and  . This is because an AVL tree of height contains at least nodes where } is the Fibonacci sequence with the seed values , .


Operations

Read-only operations of an AVL tree involve carrying out the same actions as would be carried out on an unbalanced binary search tree, but modifications have to observe and restore the height balance of the sub-trees.

Searching

Searching for a specific key in an AVL tree can be done the same way as that of any balanced or unbalanced binary search tree.[7] In order for search to work effectively it has to employ a comparison function which establishes a total order (or at least a total preorder) on the set of keys.[8] The number of comparisons required for successful search is limited by the height and for unsuccessful search is very close to , so both are in .[9]

Traversal

Once a node has been found in an AVL tree, the _next_ or _previous_ node can be accessed in amortized constant time. Some instances of exploring these "nearby" nodes require traversing up to links (particularly when navigating from the rightmost leaf of the root’s left subtree to the root or from the root to the leftmost leaf of the root’s right subtree; in the AVL tree of figure 1, moving from node P to the _next but one_ node Q takes 3 steps). However, exploring all nodes of the tree in this manner would visit each link exactly twice: one downward visit to enter the subtree rooted by that node, another visit upward to leave that node’s subtree after having explored it. And since there are links in any tree, the amortized cost is , or approximately 2.

Insert

When inserting an element into an AVL tree, you initially follow the same process as inserting into a Binary Search Tree. More explicitly: In case a preceding search has not been successful the search routine returns the tree itself with indication EMPTY and the new node is inserted as root. Or, if the tree has not been empty the search routine returns a node and a direction (left or right) where the returned node does not have a child. Then the node to be inserted is made child of the returned node at the returned direction.

After this insertion it is necessary to check each of the node’s ancestors for consistency with the invariants of AVL trees: this is called "retracing". This is achieved by considering the balance factor of each node.[10][11]

Since with a single insertion the height of an AVL subtree cannot increase by more than one, the temporary balance factor of a node after an insertion will be in the range For each node checked, if the temporary balance factor remains in the range from –1 to +1 then only an update of the balance factor and no rotation is necessary. However, if the temporary balance factor becomes less than –1 or greater than +1, the subtree rooted at this node is AVL unbalanced, and a rotation is needed.[12] With insertion as the code below shows, the adequate rotation immediately perfectly rebalances the tree.

In figure 1, by inserting the new node Z as a child of node X the height of that subtree Z increases from 0 to 1.

Invariant of the retracing loop for an insertion

The height of the subtree rooted by Z has increased by 1. It is already in AVL shape.

    for (X = parent(Z); X != null; X = parent(Z)) { // Loop (possibly up to the root)
        // BalanceFactor(X) has to be updated:
        if (Z == right_child(X)) { // The right subtree increases
            if (BalanceFactor(X) > 0) { // X is right-heavy
                // ===> the temporary BalanceFactor(X) == +2
                // ===> rebalancing is required.
                G = parent(X); // Save parent of X around rotations
                if (BalanceFactor(Z) < 0)      // Right Left Case     (see figure 5)
                    N = rotate_RightLeft(X, Z); // Double rotation: Right(Z) then Left(X)
                else                           // Right Right Case    (see figure 4)
                    N = rotate_Left(X, Z);     // Single rotation Left(X)
                // After rotation adapt parent link
            } else {
                if (BalanceFactor(X) < 0) {
                    BalanceFactor(X) = 0; // Z’s height increase is absorbed at X.
                    break; // Leave the loop
                }
                BalanceFactor(X) = +1;
                Z = X; // Height(Z) increases by 1
                continue;
            }
        } else { // Z == left_child(X): the left subtree increases
            if (BalanceFactor(X) < 0) { // X is left-heavy
                // ===> the temporary BalanceFactor(X) == –2
                // ===> rebalancing is required.
                G = parent(X); // Save parent of X around rotations
                if (BalanceFactor(Z) > 0)      // Left Right Case
                    N = rotate_LeftRight(X, Z); // Double rotation: Left(Z) then Right(X)
                else                           // Left Left Case
                    N = rotate_Right(X, Z);    // Single rotation Right(X)
                // After rotation adapt parent link
            } else {
                if (BalanceFactor(X) > 0) {
                    BalanceFactor(X) = 0; // Z’s height increase is absorbed at X.
                    break; // Leave the loop
                }
                BalanceFactor(X) = –1;
                Z = X; // Height(Z) increases by 1
                continue;
            }
        }
        // After a rotation adapt parent link:
        // N is the new root of the rotated subtree
        // Height does not change: Height(N) == old Height(X)
        parent(N) = G;
        if (G != null) {
            if (X == left_child(G))
                left_child(G) = N;
            else
                right_child(G) = N;
            break;
        } else {
            tree->root = N; // N is the new root of the total tree
            break;
        }
        // There is no fall thru, only break; or continue;
    }
    // Unless loop is left via break, the height of the total tree increases by 1.

In order to update the balance factors of all nodes, first observe that all nodes requiring correction lie from child to parent along the path of the inserted leaf. If the above procedure is applied to nodes along this path, starting from the leaf, then every node in the tree will again have a balance factor of −1, 0, or 1.

The retracing can stop if the balance factor becomes 0 implying that the height of that subtree remains unchanged.

If the balance factor becomes ±1 then the height of the subtree increases by one and the retracing needs to continue.

If the balance factor temporarily becomes ±2, this has to be repaired by an appropriate rotation after which the subtree has the same height as before (and its root the balance factor 0).

The time required is for lookup, plus a maximum of retracing levels ( on average) on the way back to the root, so the operation can be completed in time.[13]

Delete

The preliminary steps for deleting a node are described in section Binary search tree#Deletion. There, the effective deletion of the subject node or the replacement node decreases the height of the corresponding child tree either from 1 to 0 or from 2 to 1, if that node had a child.

Starting at this subtree, it is necessary to check each of the ancestors for consistency with the invariants of AVL trees. This is called "retracing".

Since with a single deletion the height of an AVL subtree cannot decrease by more than one, the temporary balance factor of a node will be in the range from −2 to +2. If the balance factor remains in the range from −1 to +1 it can be adjusted in accord with the AVL rules. If it becomes ±2 then the subtree is unbalanced and needs to be rotated. (Unlike insertion where a rotation always balances the tree, after delete, there may be BF(Z) ≠ 0 (see fig.s 4 and 5), so that after the appropriate single or double rotation the height of the rebalanced subtree decreases by one meaning that the tree has to be rebalanced again on the next higher level.) The various cases of rotations are described in section Rebalancing.

Invariant of the retracing loop for a deletion

The height of the subtree rooted by N has decreased by 1. It is already in AVL shape.

    for (X = parent(N); X != null; X = G) { // Loop (possibly up to the root)
        G = parent(X); // Save parent of X around rotations
        // BalanceFactor(X) has not yet been updated!
        if (N == left_child(X)) { // the left subtree decreases
            if (BalanceFactor(X) > 0) { // X is right-heavy
                // ===> the temporary BalanceFactor(X) == +2
                // ===> rebalancing is required.
                Z = right_child(X); // Sibling of N (higher by 2)
                b = BalanceFactor(Z);
                if (b < 0)                     // Right Left Case     (see figure 5)
                    N = rotate_RightLeft(X, Z); // Double rotation: Right(Z) then Left(X)
                else                           // Right Right Case    (see figure 4)
                    N = rotate_Left(X, Z);     // Single rotation Left(X)
                // After rotation adapt parent link
            } else {
                if (BalanceFactor(X) == 0) {
                    BalanceFactor(X) = +1; // N’s height decrease is absorbed at X.
                    break; // Leave the loop
                }
                N = X;
                BalanceFactor(N) = 0; // Height(N) decreases by 1
                continue;
            }
        } else { // (N == right_child(X)): The right subtree decreases
            if (BalanceFactor(X) < 0) { // X is left-heavy
                // ===> the temporary BalanceFactor(X) == –2
                // ===> rebalancing is required.
                Z = left_child(X); // Sibling of N (higher by 2)
                b = BalanceFactor(Z);
                if (b > 0)                     // Left Right Case
                    N = rotate_LeftRight(X, Z); // Double rotation: Left(Z) then Right(X)
                else                        // Left Left Case
                    N = rotate_Right(X, Z);    // Single rotation Right(X)
                // After rotation adapt parent link
            } else {
                if (BalanceFactor(X) == 0) {
                    BalanceFactor(X) = –1; // N’s height decrease is absorbed at X.
                    break; // Leave the loop
                }
                N = X;
                BalanceFactor(N) = 0; // Height(N) decreases by 1
                continue;
            }
        }
        // After a rotation adapt parent link:
        // N is the new root of the rotated subtree
        parent(N) = G;
        if (G != null) {
            if (X == left_child(G))
                left_child(G) = N;
            else
                right_child(G) = N;
            if (b == 0)
                break; // Height does not change: Leave the loop
        } else {
            tree->root = N; // N is the new root of the total tree
        }
        // Height(N) decreases by 1 (== old Height(X)-1)
    }
    // Unless loop is left via break, the height of the total tree decreases by 1.

The retracing can stop if the balance factor becomes ±1 (it must have been 0) meaning that the height of that subtree remains unchanged.

If the balance factor becomes 0 (it must have been ±1) then the height of the subtree decreases by one and the retracing needs to continue.

If the balance factor temporarily becomes ±2, this has to be repaired by an appropriate rotation. It depends on the balance factor of the sibling Z (the higher child tree in fig. 4) whether the height of the subtree decreases by one –and the retracing needs to continue– or does not change (if Z has the balance factor 0) and the whole tree is in AVL-shape.

The time required is for lookup, plus a maximum of retracing levels ( on average) on the way back to the root, so the operation can be completed in time.

Set operations and bulk operations

In addition to the single-element insert, delete and lookup operations, several set operations have been defined on AVL trees: union, intersection and set difference. Then fast _bulk_ operations on insertions or deletions can be implemented based on these set functions. These set operations rely on two helper operations, _Split_ and _Join_. With the new operations, the implementation of AVL trees can be more efficient and highly-parallelizable.[14]

-   _Join_: The function _Join_ is on two AVL trees and and a key will return a tree containing all elements in , as well as . It requires to be greater than all keys in and smaller than all keys in . If the two trees differ by height at most one, _Join_ simply create a new node with left subtree , root and right subtree . Otherwise, suppose that is higher than for more than one (the other case is symmetric). _Join_ follows the right spine of until a node which is balanced with . At this point a new node with left child , root and right child is created to replace c. The new node satisfies the AVL invariant, and its height is one greater than . The increase in height can increase the height of its ancestors, possibly invalidating the AVL invariant of those nodes. This can be fixed either with a double rotation if invalid at the parent or a single left rotation if invalid higher in the tree, in both cases restoring the height for any further ancestor nodes. _Join_ will therefore require at most two rotations. The cost of this function is the difference of the heights between the two input trees.

function joinRightAVL(T_(L), k, T_(R))
    (l,k',c)=expose(T_(L))
    if (h(c)<h(T_(R))+1)
       T'=Node(c,k,T_(R))
       if (h(T')<=h(l)+1) then return Node(l,k',T')
       else return rotateLeft(Node(l,k'rotateRight(T')))
    else 
        T'=joinRightAVL(c,k,T_(R))
        T''=Node(l,k',T')
        if (h(T_(L))>h(T_(R))+1) return T''
        else return rotateLeft(T'')
function joinLeftAVL(T_(L), k, T_(R))
  /* symmetric to joinRightAVL */
function join(T_(L), k, T_(R))
    if (h(T_(L))>h(T_(R))+1) return joinRightAVL(T_(L), k, T_(R))
    if (h(T_(R))>h(T_(L))+1) return joinLeftAVL(T_(L), k, T_(R))
    return Node(T_(L),k,T_(R))
    

Here h(v) of a node v the height of v. expose(v)=(l,k,r) means to extract a tree node v's left child l, the key of the node k, and the right child r. Node(l,k,r) means to create a node of left child l, key k, and right child r.

-   _Split_: To split an AVL tree into two smaller trees, those smaller than key _x_, and those larger than key _x_, first draw a path from the root by inserting _x_ into the AVL. After this insertion, all values less than _x_ will be found on the left of the path, and all values greater than _x_ will be found on the right. By applying _Join_, all the subtrees on the left side are merged bottom-up using keys on the path as intermediate nodes from bottom to top to form the left tree, and the right part is asymmetric. The cost of _Split_ is O(log n), order of the height of the tree.

function split(T,k)
    if (T=nil) return (nil,false,nil)
    (L,(m,c),R)=expose(T)
    if (k=m) return (L,true,R)
    if (k<m) 
       (L',b,R')=split(L,k)
       return (L',b,join(R',m,R))
    if (k>m) 
       (L',b,R')=split(R,k)
       return (join(L,m,L'),b,R))

The union of two AVLs and representing sets and , is an AVL that represents .

function union(t₁, t₂):
    if t₁ = nil:
        return t₂
    if t₂ = nil:
        return t₁
    t_(<), t_(>) ← split t₂ on t₁.root
    return join(t₁.root,union(left(t₁), t_(<)),union(right(t₁), t_(>)))

Here, _Split_ is presumed to return two trees: one holding the keys less its input key, one holding the greater keys. (The algorithm is non-destructive, but an in-place destructive version exists as well.)

The algorithm for intersection or difference is similar, but requires the _Join2_ helper routine that is the same as _Join_ but without the middle key. Based on the new functions for union, intersection or difference, either one key or multiple keys can be inserted to or deleted from the AVL tree. Since _Split_ calls _Join_ but does not deal with the balancing criteria of AVL trees directly, such an implementation is usually called the "join-based" implementation.

The complexity of each of union, intersection and difference is $O\left(m \log \left({n\over m}+1\right)\right)$ for AVLs of sizes m and n( ≥ m). More importantly, since the recursive calls to union, intersection or difference are independent of each other, they can be executed in parallel with a parallel depth O(log mlog n).[15] When m = 1, the join-based implementation has the same computational DAG as single-element insertion and deletion.


Rebalancing

If during a modifying operation (e.g. insert, delete) a (temporary) height difference of more than one arises between two child subtrees, the parent subtree has to be "rebalanced". The given repair tools are the so-called tree rotations, because they move the keys only "vertically", so that the ("horizontal") in-order sequence of the keys is fully preserved (which is essential for a binary-search tree).[16][17]

Let X be the node that has a (temporary) balance factor of −2 or +2. Its left or right subtree was modified. Let Z be the higher child. Note that Z is in AVL shape by induction hypothesis.

In case of insertion this insertion has happened to one of Z's children in a way that Z's height has increased. In case of deletion this deletion has happened to the sibling t₁ of Z in a way so that t₁'s height being already lower has decreased. (In that case Z's balance factor may be 0.)

There are four situations that might arise. We will describe them as DIR1 DIR2, where DIR1 comes from the set { _left_, _right_ } and DIR2 as a balance factor comes from the set { _left-heavy_ = −1, _balanced_ = 0, _right-heavy_ = +1 }.[18]

Situation Dir1 Dir2 denotes:

    Z IS A DIR1 CHILD OF ITS PARENT AND

        '''Z is Dir2-heavy if Dir2 != Dir1 '''
        '''Z is not (−Dir2)-heavy if Dir2 == Dir1 '''

i.e.

  -- ------------- --------------------------------------------- ------------------------ ------------------------------ ----------------
     Right Right   => Z is a _right_ child of its parent X and   Z is not _left-heavy_    (i.e. BalanceFactor(Z) ≥ 0)    (see figure 4)
     Left Left     => Z is a _left_ child of its parent X and    Z is not _right-heavy_   (i.e. BalanceFactor(Z) ≤ 0)
     Right Left    => Z is a _right_ child of its parent X and   Z is _left-heavy_        (i.e. BalanceFactor(Z) = −1)   (see figure 5)
     Left Right    => Z is a _left_ child of its parent X and    Z is _right-heavy_       (i.e. BalanceFactor(Z) = +1)
  -- ------------- --------------------------------------------- ------------------------ ------------------------------ ----------------

The balance violation of case Dir1 == Dir2 is repaired by a simple rotation rotate_(−Dir1) (rotate_Left in figure 4 resp. its mirror rotate_Right).

The case Dir1 != Dir2 is repaired by a double rotation rotate_(−Dir2)(−Dir1) == rotate_Dir1Dir2 (rotate_RightLeft in figure 5 resp. its mirror rotate_LeftRight).

The cost of a rotation, both simple and double, is constant.

Simple rotation

Figure 4 shows a Right Right situation. In its upper half, node X has two child trees with a balance factor of +2. Moreover, the inner child t₂₃ of Z (i.e., left child when Z is right child resp. right child when Z is left child) is not higher than its sibling t₄. This can happen by a height increase of subtree t₄ or by a height decrease of subtree t₁. In the latter case, also the pale situation where t₂₃ has the same height as t₄ may occur.

The result of the left rotation is shown in the lower half of the figure. Three links (thick edges in figure 4) and two balance factors are to be updated.

As the figure shows, before an insertion, the leaf layer was at level h+1, temporarily at level h+2 and after the rotation again at level h+1. In case of a deletion, the leaf layer was at level h+2, where it is again, when t₂₃ and t₄ were of same height. Otherwise the leaf layer reaches level h+1, so that the height of the rotated tree decreases.

AVL-simple-left_K.svg

Code snippet of a simple left rotation

  --------- ----------------------------------------
  Input:    X = root of subtree to be rotated left
            Z = right child of X, Z is right-heavy
                with height == X
  Result:   new root of rebalanced subtree
  --------- ----------------------------------------

    node *rotate_Left(node *X, node *Z) {
        // Z is by 2 higher than its sibling
        t23 = left_child(Z); // Inner child of Z
        right_child(X) = t23;
        if (t23 != null)
            parent(t23) = X;
        left_child(Z) = X;
        parent(X) = Z;
        // 1st case, BalanceFactor(Z) == 0, only happens with deletion, not insertion:
        if (BalanceFactor(Z) == 0) { // t23 has been of same height as t4
            BalanceFactor(X) = +1;   // t23 now higher
            BalanceFactor(Z) = –1;   // t4 now lower than X
        } else { // 2nd case happens with insertion or deletion:
            BalanceFactor(X) = 0;
            BalanceFactor(Z) = 0;
        }
        return Z; // return new root of rotated subtree
    }

Double rotation

Figure 5 shows a Right Left situation. In its upper third, node X has two child trees with a balance factor of +2. But unlike figure 4, the inner child Y of Z is higher than its sibling t₄. This can happen by the insertion of Y itself or a height increase of one of its subtrees t₂ or t₃ (with the consequence that they are of different height) or by a height decrease of subtree t₁. In the latter case, it may also occur that t₂ and t₃ are of same height.

The result of the first, the right, rotation is shown in the middle third of the figure. (With respect to the balance factors, this rotation is not of the same kind as the other AVL single rotations, because the height difference between Y and t₄ is only 1.) The result of the final left rotation is shown in the lower third of the figure. Five links (thick edges in figure 5) and three balance factors are to be updated.

As the figure shows, before an insertion, the leaf layer was at level h+1, temporarily at level h+2 and after the double rotation again at level h+1. In case of a deletion, the leaf layer was at level h+2 and after the double rotation it is at level h+1, so that the height of the rotated tree decreases.

AVL-double-rl_K.svg

Code snippet of a right-left double rotation

  --------- -----------------------------------
  Input:    X = root of subtree to be rotated
            Z = its right child, left-heavy
                with height == X
  Result:   new root of rebalanced subtree
  --------- -----------------------------------

    node *rotate_RightLeft(node *X, node *Z) {
        // Z is by 2 higher than its sibling
        Y = left_child(Z); // Inner child of Z
        // Y is by 1 higher than sibling
        t3 = right_child(Y);
        left_child(Z) = t3;
        if (t3 != null)
            parent(t3) = Z;
        right_child(Y) = Z;
        parent(Z) = Y;
        t2 = left_child(Y);
        right_child(X) = t2;
        if (t2 != null)
            parent(t2) = X;
        left_child(Y) = X;
        parent(X) = Y;
        if (BalanceFactor(Y) > 0) { // t3 was higher
            BalanceFactor(X) = –1;  // t1 now higher
            BalanceFactor(Z) = 0;
        } else
            if (BalanceFactor(Y) == 0) {
                BalanceFactor(X) = 0;
                BalanceFactor(Z) = 0;
            } else {
                // t2 was higher
                BalanceFactor(X) = 0;
                BalanceFactor(Z) = +1;  // t4 now higher
            }
        BalanceFactor(Y) = 0;
        return Y; // return new root of rotated subtree
    }


Comparison to other structures

Both AVL trees and red–black (RB) trees are self-balancing binary search trees and they are related mathematically. Indeed, every AVL tree can be colored red–black,[19] but there are RB trees which are not AVL balanced. For maintaining the AVL resp. RB tree's invariants, rotations play an important role. In the worst case, even without rotations, AVL or RB insertions or deletions require inspections and/or updates to AVL balance factors resp. RB colors. RB insertions and deletions and AVL insertions require from zero to three tail-recursive rotations and run in amortized time,[20][21] thus equally constant on average. AVL deletions requiring rotations in the worst case are also on average. RB trees require storing one bit of information (the color) in each node, while AVL trees mostly use two bits for the balance factor, although, when stored at the children, one bit with meaning «lower than sibling» suffices. The bigger difference between the two data structures is their height limit.

For a tree of size

-   an AVL tree’s height is at most
    :

\begin{array}{ll} h & \leqq \; c \log_2 (n + d) + b \\ & < \; c \log_2 (n + 2) + b \end{array}

    where $\varphi := \tfrac{1+\sqrt 5}2 \approx 1.618$  the golden ratio, $c := \tfrac 1{\log_2 \varphi} \approx 1.440,$   $b := \tfrac{c}2 \log_2 5 - 2 \approx \; -0.328,$ and  $d:=1+\tfrac{1}{\varphi^4\sqrt{5}} \approx 1.065$.

-   an RB tree’s height is at most
    :

\begin{array}{ll} h & \leqq \; 2\log_2(n+1) \end{array}  .[22]

AVL trees are more rigidly balanced than RB trees with an asymptotic relation ≈0.720 of the maximal heights. For insertions and deletions, Ben Pfaff shows in 79 measurements a relation of between 0.677 and 1.077 with median ≈0.947 and geometric mean ≈0.910.[23]


See also

-   Trees
-   Tree rotation
-   WAVL tree
-   Red–black tree
-   Splay tree
-   Scapegoat tree
-   B-tree
-   T-tree
-   List of data structures


References


Further reading

-   Donald Knuth. _The Art of Computer Programming_, Volume 3: _Sorting and Searching_, Third Edition. Addison-Wesley, 1997. . Pages 458–475 of section 6.2.3: Balanced Trees.


External links

-

Category:1962 in computer science Category:Binary trees Category:Soviet inventions Category:Search trees

[1]

[2]  English translation by Myron J. Ricci in _Soviet Mathematics - Doklady_, 3:1259–1263, 1962.

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14] .

[15]

[16]

[17]

[18] Thereby, rotations with case _Balanced_ do not occur with insertions.

[19]

[20]

[21] Dinesh P. Mehta, Sartaj Sahni (Ed.) _Handbook of Data Structures and Applications_ 10.4.2

[22] Red–black tree#Proof of asymptotic bounds

[23] Ben Pfaff: _Performance Analysis of BSTs in System Software._ Stanford University 2004.