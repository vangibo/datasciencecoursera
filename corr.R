corr <- function(directory, threshold = 0){

  x <- complete(directory, 1:332)
  y <- subset(x, nobs>threshold)
  id <- y$id
  
  files_full <- list.files(directory, full.names = TRUE) ##This is my list of files e.g. "specdata/001.csv"
  mydt <- data.frame()
  for (i in 1:332){
    mydt <- rbind(mydt, read.csv(files_full[i]))
  }
  good <- complete.cases(mydt)
  a <- dat[good, ]
  b <- subset(a, ID %in% id)
  matrix <- data.frame(b$nitrate, b$sulfate)
  cor(matrix, y=NULL,use="everything")
  
  }