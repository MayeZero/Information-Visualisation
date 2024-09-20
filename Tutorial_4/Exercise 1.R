a <- as.integer(readline("a ="))

if(a < 1){
  print("The number should be positive integer")
}

b = 1
factorial(a)


factorial <- function(a){
  b <- 1
  for(i in 1:a){
    b = b* i
  }
  print(b)
}