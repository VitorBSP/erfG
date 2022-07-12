testin <- function(dist){
  if(length(dist) > 1){
    stop('Only one distribution per time')
  }
  distributions = vetor |> unlist()
  vetor <- gsub("(R/d)|(.R)", '', distributions)
  dist %in% vetor
}


