#!/usr/bin/env Rscript

# this stub reads 1 line of input from STDIN and writes it out to STDOUT
# f <- file("stdin")
# open(f)
# coefs <- suppressWarnings(readLines(f, n=1))
# nedat <- suppressWarnings(readLines(f, n=1))

coefs <- "1 1"
nedat <- "-1"

coefs <- as.numeric(strsplit(coefs," ")[[1]])
nedat <- c(as.numeric(strsplit(nedat," ")[[1]]),1)

XB <- sum(nedat*coefs)

score <- format(round(1/(1+exp(-XB)),3),nsmall = 3)


write(score, stdout())
# close(f)

