# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength<-function(a,b){
  dif<-abs(length(a)-length(b))
  all<-paste("The difference in lengths is ", dif)
  return(all)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1:30),c(1:70))


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference<- function(a,b){
  dif<-abs(length(a)-length(b))
  if(length(a)>length(b)){
   all<-paste('Your first vector is longer by ',dif)
  }else if (length(b)>length(a)){
    all<-paste('Your second vector is longer by ',dif)
  }
  return(all)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1:50),c(1:88))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference<- function(a,b){
  dif<-abs(length(a)-length(b))
  if(length(a)>length(b)){
    all<-paste(deparse(substitute(a)),' is longer by ',dif)
  }else if (length(b)>length(a)){
    all<-paste(deparse(substitute(b)),' is longer by ',dif)
  }
  return(all)
}

v1<-c(1:50)
v2<-c(1:88)
DescribeDifference(v1,v2)

