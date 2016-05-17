#!/usr/bin/env Rscript
rm(list=ls())
#initialize
f <- file("stdin")
i <- 0
open(f)

# get size
size <- as.numeric(readLines(f,n=1))

# get orientation
while(length(line <- readLines(f,n=1)) > 0) {
  i <- i+1
  if (regexec("(p)",line)[[1]][1] > -1) {
    j <- regexec("(p)",line)[[1]][1]
    break()
  }
}

# find middle where the bot is
boti <- ((size-1)/2)+1
botj <- ((size-1)/2)+1

# generate moves
ver <- rep(paste0(ifelse(j-botj>0,"RIGHT","LEFT"),""),abs(j-botj))
hor <- rep(paste0(ifelse(i-boti>0,"DOWN","UP"),""),abs(i-boti))

# write to stdout
write(c(ver,hor),stdout())

# close file
close(f)
