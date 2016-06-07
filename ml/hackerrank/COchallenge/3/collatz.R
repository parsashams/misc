#!/usr/bin/env Rscript

# this stub reads 1 line of input from STDIN and writes it out to STDOUT
f <- file("stdin")
open(f)
lines <- suppressWarnings(readLines(f, n=1))
# lines <- "111 5"
lines <- strsplit(lines," ")[[1]]

N <- as.numeric(lines[1])
K <- as.integer(lines[2])

for (i in 1:K) {
  N <- ifelse(N %% 2  == 0, N / 2, 3*N + 1)
  # write(c(i,N), stdout())
}


write(N, stdout())
close(f)

