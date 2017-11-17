pollutantmean <- function(directory, pollutant, id = 1:332){
      
      files_full <- list.files(directory, full.names = TRUE) ##This is my list of files e.g. "specdata/001.csv"
      mydt <- data.frame()
      for (i in id){
        mydt <- rbind(mydt, read.csv(files_full[i]))
      }
      pollutantcol <-mydt[, pollutant]
      mean(pollutantcol, na.rm = TRUE)
    }
  

