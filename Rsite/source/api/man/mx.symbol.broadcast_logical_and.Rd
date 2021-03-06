% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.symbol.broadcast_logical_and}
\alias{mx.symbol.broadcast_logical_and}
\title{broadcast_logical_and:Returns the result of element-wise **logical and** with broadcasting.}
\usage{
mx.symbol.broadcast_logical_and(...)
}
\arguments{
\item{lhs}{NDArray-or-Symbol
First input to the function}

\item{rhs}{NDArray-or-Symbol
Second input to the function}

\item{name}{string, optional
Name of the resulting symbol.}
}
\value{
out The result mx.symbol
}
\description{
Example::
}
\details{
x = [[ 1.,  1.,  1.],
        [ 1.,  1.,  1.]]

y = [[ 0.],
        [ 1.]]

broadcast_logical_and(x, y) = [[ 0.,  0.,  0.],
                                  [ 1.,  1.,  1.]]



Defined in src/operator/tensor/elemwise_binary_broadcast_op_logic.cc:L154
}

