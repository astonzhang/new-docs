% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.nd.linalg.potri}
\alias{mx.nd.linalg.potri}
\title{Performs matrix inversion from a Cholesky factorization.
Input is a tensor *A* of dimension *n >= 2*.}
\arguments{
\item{A}{NDArray-or-Symbol
Tensor of lower triangular matrices}
}
\value{
out The result mx.ndarray
}
\description{
If *n=2*, *A* is a lower triangular matrix (entries of upper triangle are all zero)
with positive diagonal. We compute:
}
\details{
*out* = *A*\ :sup:`-T` \* *A*\ :sup:`-1`

In other words, if *A* is the Cholesky factor of a symmetric positive definite matrix
*B* (obtained by *potrf*), then

*out* = *B*\ :sup:`-1`

If *n>2*, *potri* is performed separately on the trailing two dimensions for all inputs
(batch mode).

.. note:: The operator supports float32 and float64 data types only.

.. note:: Use this operator only if you are certain you need the inverse of *B*, and
          cannot use the Cholesky factor *A* (*potrf*), together with backsubstitution
          (*trsm*). The latter is numerically much safer, and also cheaper.

Examples::

// Single matrix inverse
   A = [[2.0, 0], [0.5, 2.0]]
   potri(A) = [[0.26563, -0.0625], [-0.0625, 0.25]]

// Batch matrix inverse
   A = [[[2.0, 0], [0.5, 2.0]], [[4.0, 0], [1.0, 4.0]]]
   potri(A) = [[[0.26563, -0.0625], [-0.0625, 0.25]],
               [[0.06641, -0.01562], [-0.01562, 0,0625]]]

Defined in src/operator/tensor/la_op.cc:L259
}

