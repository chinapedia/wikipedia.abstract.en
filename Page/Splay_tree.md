A SPLAY TREE is a self-balancing binary search tree with the additional property that recently accessed elements are quick to access again. It performs basic operations such as insertion, look-up and removal in O(log n) amortized time. For many sequences of non-random operations, splay trees perform better than other search trees, even when the specific pattern of the sequence is unknown. The splay tree was invented by Daniel Sleator and Robert Tarjan in 1985.[1]

All normal operations on a binary search tree are combined with one basic operation, called _splaying_. Splaying the tree for a certain element rearranges the tree so that the element is placed at the root of the tree. One way to do this with the basic search operation is to first perform a standard binary tree search for the element in question, and then use tree rotations in a specific fashion to bring the element to the top. Alternatively, a top-down algorithm can combine the search and the tree reorganization into a single phase.


Advantages

Good performance for a splay tree depends on the fact that it is self-optimizing, in that frequently accessed nodes will move nearer to the root where they can be accessed more quickly. The worst-case height—though unlikely—is O(n), with the average being O(log _n_). Having frequently-used nodes near the root is an advantage for many practical applications (also see Locality of reference), and is particularly useful for implementing caches and garbage collection algorithms.

Advantages include:

-   Comparable performance: Average-case performance is as efficient as other trees.[2]
-   Small memory footprint: Splay trees do not need to store any bookkeeping data.


Disadvantages

The most significant disadvantage of splay trees is that the height of a splay tree can be linear. For example, this will be the case after accessing all _n_ elements in non-decreasing order. Since the height of a tree corresponds to the worst-case access time, this means that the actual cost of an operation can be high. However the amortized access cost of this worst case is logarithmic, O(log _n_). Also, the expected access cost can be reduced to O(log _n_) by using a randomized variant.[3]

The representation of splay trees can change even when they are accessed in a 'read-only' manner (i.e. by _find_ operations). This complicates the use of such splay trees in a multi-threaded environment. Specifically, extra management is needed if multiple threads are allowed to perform _find_ operations concurrently. This also makes them unsuitable for general use in purely functional programming, although even there they can be used in limited ways to implement priority queues.


Operations

Splaying

When a node _x_ is accessed, a splay operation is performed on _x_ to move it to the root. To perform a splay operation we carry out a sequence of _splay steps_, each of which moves _x_ closer to the root. By performing a splay operation on the node of interest after every access, the recently accessed nodes are kept near the root and the tree remains roughly balanced, so that we achieve the desired amortized time bounds.

Each particular step depends on three factors:

-   Whether _x_ is the left or right child of its parent node, _p_,
-   whether _p_ is the root or not, and if not
-   whether _p_ is the left or right child of _its_ parent, _g_ (the _grandparent_ of x).

It is important to remember to set _gg_ (the _great-grandparent_ of x) to now point to x after any splay operation. If _gg_ is null, then x obviously is now the root and must be updated as such.

There are three types of splay steps, each of which has two symmetric variants: left- and right-handed. For the sake of brevity, only one of these two is shown for each type. These three types are:

ZIG STEP: this step is done when _p_ is the root. The tree is rotated on the edge between _x_ and _p_. Zig steps exist to deal with the parity issue and will be done only as the last step in a splay operation and only when _x_ has odd depth at the beginning of the operation.

splay_tree_zig.svg

ZIG-ZIG STEP: this step is done when _p_ is not the root and _x_ and _p_ are either both right children or are both left children. The picture below shows the case where _x_ and _p_ are both left children. The tree is rotated on the edge joining _p_ with _its_ parent _g_, then rotated on the edge joining _x_ with _p_. Note that zig-zig steps are the only thing that differentiate splay trees from the _rotate to root_ method introduced by Allen and Munro[4] prior to the introduction of splay trees.

Zigzig.gif

ZIG-ZAG STEP: this step is done when _p_ is not the root and _x_ is a right child and _p_ is a left child or vice versa. The tree is rotated on the edge between _p_ and x, and then rotated on the resulting edge between _x_ and g.

Zigzag.gif

Join

Given two trees S and T such that all elements of S are smaller than the elements of T, the following steps can be used to join them to a single tree:

-   Splay the largest item in S. Now this item is in the root of S and has a null right child.
-   Set the right child of the new root to T.

Split

Given a tree and an element _x_, return two new trees: one containing all elements less than or equal to _x_ and the other containing all elements greater than _x_. This can be done in the following way:

-   Splay _x_. Now it is in the root so the tree to its left contains all elements smaller than _x_ and the tree to its right contains all element larger than _x_.
-   Split the right subtree from the rest of the tree.

Insertion

To insert a value _x_ into a splay tree:

-   Insert _x_ as with a normal binary search tree.
-   when an item is inserted, a splay is performed.
-   As a result, the newly inserted node _x_ becomes the root of the tree.

ALTERNATIVE:

-   Use the split operation to split the tree at the value of _x_ to two sub-trees: S and T.
-   Create a new tree in which _x_ is the root, S is its left sub-tree and T its right sub-tree.

Deletion

To delete a node _x_, use the same method as with a binary search tree: if _x_ has two children, swap its value with that of either the rightmost node of its left sub tree (its in-order predecessor) or the leftmost node of its right subtree (its in-order successor). Then remove that node instead. In this way, deletion is reduced to the problem of removing a node with 0 or 1 children. Unlike a binary search tree, in a splay tree after deletion, we splay the parent of the removed node to the top of the tree.

ALTERNATIVE:

-   The node to be deleted is first splayed, i.e. brought to the root of the tree and then deleted. leaves the tree with two sub trees.
-   The two sub-trees are then joined using a "join" operation.


Implementation and variants

Splaying, as mentioned above, is performed during a second, bottom-up pass over the access path of a node. It is possible to record the access path during the first pass for use during the second, but that requires extra space during the access operation. Another alternative is to keep a parent pointer in every node, which avoids the need for extra space during access operations but may reduce overall time efficiency because of the need to update those pointers.[5]

Another method which can be used is based on the argument that we can restructure the tree on our way down the access path instead of making a second pass. This top-down splaying routine uses three sets of nodes - left tree, right tree and middle tree. The first two contain all items of original tree known to be less than or greater than current item respectively. The middle tree consists of the sub-tree rooted at the current node. These three sets are updated down the access path while keeping the splay operations in check. Another method, semisplaying, modifies the zig-zig case to reduce the amount of restructuring done in all operations.[6][7]

Below there is an implementation of splay trees in C++, which uses pointers to represent each node on the tree. This implementation is based on bottom-up splaying version and uses the second method of deletion on a splay tree. Also, unlike the above definition, this C++ version does _not_ splay the tree on finds - it only splays on insertions and deletions, and the find operation, therefore, has linear time complexity.

    #include <functional>

    #ifndef SPLAY_TREE
    #define SPLAY_TREE

    template<typename T, typename Comp = std::less<T>>
    class splay_tree {
    private:
      Comp comp;
      unsigned long p_size;

      struct node {
        node *left, *right;
        node *parent;
        T key;
        node( const T& init = T( ) ) : left( nullptr ), right( nullptr ), parent( nullptr ), key( init ) { }
        ~node( ) {

        }
      } *root;

      void left_rotate( node *x ) {
        node *y = x->right;
        if(y) {
          x->right = y->left;
          if( y->left ) y->left->parent = x;
          y->parent = x->parent;
        }

        if( !x->parent ) root = y;
        else if( x == x->parent->left ) x->parent->left = y;
        else x->parent->right = y;
        if(y) y->left = x;
        x->parent = y;
      }

      void right_rotate( node *x ) {
        node *y = x->left;
        if(y) {
          x->left = y->right;
          if( y->right ) y->right->parent = x;
          y->parent = x->parent;
        }
        if( !x->parent ) root = y;
        else if( x == x->parent->left ) x->parent->left = y;
        else x->parent->right = y;
        if(y) y->right = x;
        x->parent = y;
      }

      void splay( node *x ) {
        while( x->parent ) {
          if( !x->parent->parent ) {
            if( x->parent->left == x ) right_rotate( x->parent );
            else left_rotate( x->parent );
          } else if( x->parent->left == x && x->parent->parent->left == x->parent ) {
            right_rotate( x->parent->parent );
            right_rotate( x->parent );
          } else if( x->parent->right == x && x->parent->parent->right == x->parent ) {
            left_rotate( x->parent->parent );
            left_rotate( x->parent );
          } else if( x->parent->left == x && x->parent->parent->right == x->parent ) {
            right_rotate( x->parent );
            left_rotate( x->parent );
          } else {
            left_rotate( x->parent );
            right_rotate( x->parent );
          }
        }
      }

      void replace( node *u, node *v ) {
        if( !u->parent ) root = v;
        else if( u == u->parent->left ) u->parent->left = v;
        else u->parent->right = v;
        if( v ) v->parent = u->parent;
      }

      node* subtree_minimum( node *u ) {
        while( u->left ) u = u->left;
        return u;
      }

      node* subtree_maximum( node *u ) {
        while( u->right ) u = u->right;
        return u;
      }
    public:
      splay_tree( ) : root( nullptr ), p_size( 0 ) { }

      void insert( const T &key ) {
        node *z = root;
        node *p = nullptr;

        while( z ) {
          p = z;
          if( comp( z->key, key ) ) z = z->right;
          else z = z->left;
        }

        z = new node( key );
        z->parent = p;

        if( !p ) root = z;
        else if( comp( p->key, z->key ) ) p->right = z;
        else p->left = z;

        splay( z );
        p_size++;
      }

      node* find( const T &key ) {
        node *z = root;
        while( z ) {
          if( comp( z->key, key ) ) z = z->right;
          else if( comp( key, z->key ) ) z = z->left;
          else return z;
        }
        return nullptr;
      }

      void erase( const T &key ) {
        node *z = find( key );
        if( !z ) return;

        splay( z );

        if( !z->left ) replace( z, z->right );
        else if( !z->right ) replace( z, z->left );
        else {
          node *y = subtree_minimum( z->right );
          if( y->parent != z ) {
            replace( y, y->right );
            y->right = z->right;
            y->right->parent = y;
          }
          replace( z, y );
          y->left = z->left;
          y->left->parent = y;
        }

        delete z;
        p_size--;
      }

    /* //the alternative implementation
        void erase( const T &key) {
            node *z = find( key );
            if( !z ) return;

            splay( z );

            node *s = z->left;
            node *t = z->right;
            delete z;

            node *sMax = NULL;
            if(s) {
                s->parent = NULL;
                sMax = subtree_maximum(s);
                splay(sMax);
                root = sMax;
            }
            if(t) {
                if(s)
                    sMax->right = t;
                else
                    root = t;
                t->parent = sMax;
            }

            p_size--;
        }
    */

      const T& minimum( ) { return subtree_minimum( root )->key; }
      const T& maximum( ) { return subtree_maximum( root )->key; }

      bool empty( ) const { return root == nullptr; }
      unsigned long size( ) const { return p_size; }
    };

    #endif // SPLAY_TREE


Analysis

A simple amortized analysis of static splay trees can be carried out using the potential method. Define:

-   size(_r_) = the number of nodes in the sub-tree rooted at node _r_ (including _r_).
-   rank(_r_) = log₂(size(_r_)).
-   Φ = the sum of the ranks of all the nodes in the tree.

Φ will tend to be high for poorly balanced trees and low for well-balanced trees.

To apply the potential method, we first calculate ΔΦ: the change in the potential caused by a splay operation. We check each case separately. Denote by rank′ the rank function after the operation. x, p and g are the nodes affected by the rotation operation (see figures above).

Zig step

    {|

|- | ΔΦ || = rank′(_p_) − rank(_p_) + rank′(_x_) − rank(_x_)   | [since only p and x change ranks] |- | || = rank′(_p_) − rank(_x_) | [since rank′(_x_)=rank(_p_)] |- | || ≤ rank′(_x_) − rank(_x_) | [since rank′(_p_)<rank′(_x_)] |}

Zig-zig step

    {|

| ΔΦ ||colspan=2| = rank′(_g_) − rank(_g_) + rank′(_p_) − rank(_p_) + rank′(_x_) − rank(_x_) |- | || = rank′(_g_) + rank′(_p_) − rank(_p_) − rank(_x_)   | [since rank′(x)=rank(g)] |- | || ≤ rank′(_g_) + rank′(_x_) − 2 rank(_x_) | [since rank(_x_)<rank(_p_) and rank′(_x_)>rank′(_p_)] |- | || ≤ 3(rank′(_x_)−rank(_x_)) − 2 | [due to the concavity of the log function] |}

Zig-zag step

    {|

| ΔΦ ||colspan=2| = rank′(_g_) − rank(_g_) + rank′(_p_) − rank(_p_) + rank′(_x_) − rank(_x_) |- | || ≤ rank′(_g_) + rank′(_p_) − 2 rank(_x_)   | [since rank′(_x_)=rank(_g_) and rank(_x_)<rank(_p_)] |- | || ≤ 3(rank′(_x_)−rank(_x_)) − 2 | [due to the concavity of the log function] |} The amortized cost of any operation is ΔΦ plus the actual cost. The actual cost of any zig-zig or zig-zag operation is 2 since there are two rotations to make. Hence:

    {|

| amortized-cost || = cost + ΔΦ |- | || ≤ 3(rank′(_x_)−rank(_x_)) |}

When summed over the entire splay operation, this telescopes to 3(rank(root)−rank(_x_)) which is O(log _n_). The Zig operation adds an amortized cost of 1, but there's at most one such operation.

So now we know that the total _amortized_ time for a sequence of _m_ operations is:

_T__(_a__m__o__r__t__i__z__e__d_)(_m_) = _O_(_m_log _n_)

To go from the amortized time to the actual time, we must add the decrease in potential from the initial state before any operation is done (Φ_(_i_)) to the final state after all operations are completed (Φ_(_f_)).

_Φ__(_i_) − _Φ__(_f_) = ∑_(_x_)_r__a__n__k__(_i_)(_x_) − _r__a__n__k__(_f_)(_x_) = _O_(_n_log _n_)

where the last inequality comes from the fact that for every node _x_, the minimum rank is 0 and the maximum rank is log(_n_).

Now we can finally bound the actual time:

_T__(_a__c__t__u__a__l_)(_m_) = _O_(_m_log _n_ + _n_log _n_)

Weighted analysis

The above analysis can be generalized in the following way.

-   Assign to each node _r_ a weight _w_(_r_).
-   Define size(_r_) = the sum of weights of nodes in the sub-tree rooted at node _r_ (including _r_).
-   Define rank(_r_) and Φ exactly as above.

The same analysis applies and the amortized cost of a splaying operation is again:

$$\mathrm{rank}(root)-\mathrm{rank}(x) = O(\log{W}- \log{w(x)}) = O\left(\log{\frac{W}{w(x)}}\right)$$
where _W_ is the sum of all weights.

The decrease from the initial to the final potential is bounded by:

$$\Phi_i - \Phi_f \leq \sum_{x\in tree}{\log{\frac{W}{w(x)}}}$$
since the maximum size of any single node is _W_ and the minimum is _w(x)_.

Hence the actual time is bounded by:

$$O\left(\sum_{x \in sequence}{\log{\frac{W}{w(x)}}} + \sum_{x \in tree}{\log{\frac{W}{w(x)}}}\right)$$


Performance theorems

There are several theorems and conjectures regarding the worst-case runtime for performing a sequence _S_ of _m_ accesses in a splay tree containing _n_ elements.


Dynamic optimality conjecture

In addition to the proven performance guarantees for splay trees there is an unproven conjecture of great interest from the original Sleator and Tarjan paper. This conjecture is known as the _dynamic optimality conjecture_ and it basically claims that splay trees perform as well as any other binary search tree algorithm up to a constant factor.

    DYNAMIC OPTIMALITY CONJECTURE:[8] Let A be any binary search tree algorithm that accesses an element x by traversing the path from the root to x at a cost of d(x) + 1, and that between accesses can make any rotations in the tree at a cost of 1 per rotation. Let A(S) be the cost for A to perform the sequence S of accesses. Then the cost for a splay tree to perform the same accesses is O[n + A(S)].

There are several corollaries of the dynamic optimality conjecture that remain unproven:

    TRAVERSAL CONJECTURE:[9] Let T₁ and T₂ be two splay trees containing the same elements. Let S be the sequence obtained by visiting the elements in T₂ in preorder (i.e., depth first search order). The total cost of performing the sequence S of accesses on T₁ is O(n).

    DEQUE CONJECTURE:[10][11][12] Let S be a sequence of m double-ended queue operations (push, pop, inject, eject). Then the cost of performing S on a splay tree is O(m + n).

    SPLIT CONJECTURE:[13] Let S be any permutation of the elements of the splay tree. Then the cost of deleting the elements in the order S is O(n).


Variants

In order to reduce the number of restructuring operations, it is possible to replace the splaying with _semi-splaying_, in which an element is splayed only halfway towards the root.[14][15]

Another way to reduce restructuring is to do full splaying, but only in some of the access operations - only when the access path is longer than a threshold, or only in the first _m_ access operations.[16]


See also

-   Finger tree
-   Link/cut tree
-   Scapegoat tree
-   Zipper (data structure)
-   Trees
-   Tree rotation
-   AVL tree
-   B-tree
-   T-tree
-   List of data structures
-   Iacono's working set structure
-   Geometry of binary search trees
-   Splaysort, a sorting algorithm using splay trees
-   Treap


Notes


References

-

-

-

-

-

-

-

-

-

-

-

-

-


External links

-   NIST's Dictionary of Algorithms and Data Structures: Splay Tree
-   Implementations in C and Java (by Daniel Sleator)
-   Pointers to splay tree visualizations
-   Fast and efficient implementation of Splay trees
-   Top-Down Splay Tree Java implementation
-   Zipper Trees

Category:Binary trees Category:Search trees Category:Amortized data structures

[1] .

[2] .

[3] .

[4] .

[5]

[6]

[7]

[8]

[9]

[10]

[11] .

[12] .

[13] .

[14]

[15] .

[16]