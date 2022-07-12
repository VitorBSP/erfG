## code to prepare `DATASET` dataset goes here

vetor <- read.table(text = list.files("R",include.dirs= FALSE,
                                      full.names=TRUE))


usethis::use_data(vetor, overwrite = TRUE, internal = TRUE)
