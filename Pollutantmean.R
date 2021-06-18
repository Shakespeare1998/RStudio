pollutantmean<- function(directory="/Users/athindrabandi/Desktop/specdata", pollutant, id=1:332){
  filenames <- list.files(path=directory, pattern="*.csv")
  val<- vector()
  for (i in id){
    filename <- sprintf("%03d.csv", i)
    path<- paste(directory,filename,sep="/")
    
    dat<- read.csv(path)
    d<- dat[,pollutant]
    d<- d[!is.na(d)]
    val<-c(val,d)
    
  }
  mean(val)
}
