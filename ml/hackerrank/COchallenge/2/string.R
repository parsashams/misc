#!/usr/bin/env Rscript

#' function sorts chars within a string
letter_sort <-  function (x) {
  # x = "parsa"
  tokens <- strsplit(x,"")[[1]]
  tokens <- sort(tokens)
  paste0(tokens, collapse = "")
}

# read
f <- file("stdin")
open(f)
lines <- suppressWarnings(readLines(f, n=1))

# 1.strip  2.lowercase
words <- strsplit(gsub("[^[:alpha:] ]", "", lines), " +")[[1]]
words <- tolower(words)

# 3.sort letters
ret <- sapply(words,letter_sort)
names(ret) <- NULL

# 4.sort words 5. remove dupes
ret <- unique(sort(ret))

ret <- paste0(ret, collapse=" ")
write(ret, stdout())

close(f)

