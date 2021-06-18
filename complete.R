complete<- function(directory="/Users/athindrabandi/Desktop/specdata", id=1:332){
  filenames <- list.files(path=directory, pattern="*.csv")
  nr<- vector()
  for (i in id){
    filename <- sprintf("%03d.csv", i)
    path<- paste(directory,filename,sep="/")
    
    dat<- read.csv(path)
    dat<- na.omit(dat)
    len<- nrow(dat)
    nr<- c(nr,len)
    
  }
  df<- data.frame(id,nr)
  df
}