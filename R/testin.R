testin <- function(dist){
  if(length(dist) > 1){
    stop('Only one distribution per time')
  }
  vetor <- read.table(text = list.files("R",include.dirs= FALSE, full.names=TRUE)) |> unlist()
  vetor <- gsub("(R/d)|(.R)", '', vetor)
  dist %in% vetor
}


