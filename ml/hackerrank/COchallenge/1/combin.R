#!/usr/bin/env Rscript

f <- file("stdin")
open(f)
lines <- suppressWarnings(readLines(f, n=1))

lines <- strsplit(lines, " ")[[1]]

n <- as.integer(lines[1])
m <- as.integer(lines[2])

combin <- choose(n,m)

write(combin, stdout())

close(f)

