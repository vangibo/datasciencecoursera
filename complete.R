complete <- function(directory, id = 1:332){

  files_full <- list.files(directory, full.names = TRUE) ##This is my list of files e.g. "specdata/001.csv"
  mydf <- data.frame()
  idsum <- c()
  nobs <- c()
  for (i in id){
    ##read <- read.csv(files_full[i])
    ##sum(complete.cases(read))
    mydf <- rbind(mydf, read.csv(files_full[i]))
    
    idsum <- rbind(idsum, sum(as.numeric(complete.cases(mydf[which(mydf[, "ID"] %in% i),]))))
  }
    finaldf <- data.frame(cbind(id,nobs=idsum))
    return(finaldf)
  }

    
    ##mydf_subset <- complete.cases(mydf)

  
  ##mydf_subset <- mydf(which(mydf[, "ID"] == id),)
  ##IDsum <- sum(as.numeric(complete.cases(mydf_subset)))

    ##for(i in id){
      
    ##finaldf <- data.frame(mydf_subset$ID, )
    

  
  
  
   ## mydfsum <- sum(complete.cases(mydf))  
  ##obscases <- mydf(which(mydf(complete.cases(mydf)))
  
