get_Figures <- function(){
  
  x   <- rnorm(100, 0, 1)
  y   <- rnorm(100, -0.5 + 0.05*x, 0.1)
  dat <- data.frame("x" = x,
                    "y" = y)

  # figure #1
  p <- ggplot(data=dat, aes(x=x, y=y)) + 
    geom_point() +
    geom_smooth(method="lm")
  
  
  return(list("p" = p))
  
}