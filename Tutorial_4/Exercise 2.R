a <- 1
b <- 1
x = ""
x = paste(x,"*")
print(x)

for(i in 1:5){
  c= ""
  for(b in 1:i){
    c = paste(c,"*")
  }
  print(c)
}

for(i in 1:5){
  for(j in 1:i){
    cat("*")
  }
  cat("\n")
}