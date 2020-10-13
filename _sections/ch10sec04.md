---
chapter: 10
title: Matrix Rank
---
A $$m \times n$$ matrix has $$m$$ rows, each containing $$n$$ elements each. 
Same matrix can also be viewed as $$n$$ columns containing $$m$$ elements each.

The rank of a matrix is defined as maximum number of linearly independent rows 
or columns of a matrix.

Here, a row $$r_i$$ is said to be linearly independent if it cannot be 
obtained by a linear combination of any other rows. Linear combination is an 
operation like $$a_1 r_1 + a_2 + r_2 + ...$$ where $$a_j$$'s are scalar 
constants. In other words, $$r_i$$ is linearly independent if 

$$r_i \neq \sum_{j \neq i}^{} a_j r_j$$

for any values of $$a_1$$, $$a_2$$, ...,$$a_{i-1}$$, $$a_{i+1}$$, ...

Same goes for columns as well. A column $$c_i$$ is said to be linearly 
independent if it cannot be obtained by a linear combination of any other 
columns.

For an $$m \times n$$ matrix,
- If $$m \lt n$$, then the maximum rank of the matrix is $$m$$.
- If $$m \gt n$$, then the maximum rank of the matrix is $$n$$.
The rank of a matrix would be zero only if the matrix had no elements. If a 
matrix had even one element, its minimum rank would be one.

## Finding rank of a matrix
To find rank of a matrix, first convert it to an upper or lower traiangular 
form using elementary row operations e.g $$r_1 \Leftarrow 2 r_3 + 5 r_6$$. 
*(More formally, we should convert the matrix to its row echelon form. But for 
finding rank, any triangular form works just as good)*. You might not get a 
perfect triangle always, thats ok, you should strive to get as many rows 
containing all zeros as possible. Then, the rank of the matrix is equal to the 
number of non zero rows in the transformed matrix.

For example,

$$
\begin{bmatrix}
0 & 1 & 2\\
1 & 2 & 1\\
2 & 7 & 8
\end{bmatrix}
\Longrightarrow
\begin{bmatrix}
1 & 2 & 1\\
0 & 1 & 2\\
0 & 0 & 0
\end{bmatrix}
$$

Hence, rank of this matrix is 2.

We could also use elementary column operations to transform columns instead of 
rows. The rank will remain the same.

## Full rank matrices
A matrix is called full rank matrix if all the vectors in a matrix are 
linearly independent. For example,

$$
A = 
\begin{bmatrix}
1 & 0 & 2\\
2 & 1 & 0\\
3 & 2 & 1
\end{bmatrix}
$$

$$A$$ is a full rank matrix.

Following are some interesting conclusions that can be drawn by looking at the 
rank of a matrix:
- The determinant of a square matrix is zero if it is not full column rank.
- A square matrix is invertible only if it has full rank. Because, otherwise 
  the determinant will be zero.

We can have full column rank or full row rank matrices for non-square matrices 
i.e. when $$m \neq n$$.

A matrix is called full column rank matrix if all the column vectors in a 
matrix are linearly independent i.e. rank of matrix is equal to the number of 
columns. For example,

$$
B = 
\begin{bmatrix}
1 & 0\\
2 & 1\\
3 & 2
\end{bmatrix}
$$

$$B$$ is full column rank matrix because $$Rank(B) = 2 = number \; of \; 
columns \; of \; B$$

A matrix is called full row rank matrix if all the row vectors in a matrix are 
linearly independent i.e. rank of matrix is equal to the number of rows. For 
example,

$$
C = 
\begin{bmatrix}
1 & 0 & 2\\
9 & 6 & 3
\end{bmatrix}
$$

$$C$$ is full column rank matrix because $$Rank(C) = 2 = number \; of \; rows 
\; of \; C$$

## Column space
Column space of a matrix is the set of all possible vectors that can be 
obtained by linear combination of columns of the matrix. Column space 
$$\mathcal(C)$$ of a $$m \times n$$ matrix $$\phi = [ \phi_1 \; \phi_2 \; ... 
\;\phi_n ]$$ where $$\phi_i$$]s are the columns of $$\phi$$ is given as

$$ \mathcal{C}(\phi) = \{ x \mid x = w^\intercal \phi \; \forall \; w \in 
\mathbb{R}^m\}$$

Geometrically, column space is the plane containing $$\phi_1$$, $$\phi_2$$, 
..., $$\phi_n$$.

## Lemma
A matrix $$\phi^\intercal \phi$$ is invertible if and only if $$\phi$$ is full column 
rank.

**Proof:**

*Part 1:*

Lets assume that $$\phi$$ is not full column rank.

Then, it means that there exists a vector $$x$$ such that $$x \neq \bar{0}$$ 
and 

$$\phi x = \bar{0}$$

Pre-multiplying both sides by $$\phi^\intercal$$,

$$\phi^\intercal \phi x = \bar{0}$$

Thus, the matrix $$\phi^\intercal \phi$$ is not full rank and hence not invertible.

*Part 2:*

Lets assume that $$\phi$$ is full column rank and $$\phi^\intercal \phi$$ is non 
invertible.

Then, it means that there exists a vector $$x$$ such that $$x \neq \bar{0}$$ 
and 

$$\phi^\intercal \phi x = \bar{0}$$

Pre-multiplying both sides by $$x^\intercal$$,

$$
x^\intercal \phi^\intercal \phi x = 0\\
(\phi x)^\intercal \phi x = 0\\
\phi x = \bar{0}
$$

Thus, the matrix $$\phi$$ is not full column rank. Our assumption is 
incorrect. $$\phi^\intercal \phi$$ must be invertible.