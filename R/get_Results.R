get_Results <- function(){
  
  dat <- data.frame("group" = rep(c("x", "y"), each=20),
                    "value" = c(rnorm(20, 128, 10), rnorm(20, 112, 10)))
  
  res  <- t.test(formula = dat$value ~ dat$group) # Two sample t-test results
  
  tval <- as.numeric(res$statistic) # Get the t-test statistic
  pval <- res$p.value # Get the p value from the t-test results
  x    <- as.numeric(res$estimate[1])
  y    <- as.numeric(res$estimate[2]) 
  
  return(list("x"    = x,
              "y"    = y,
              "tval" = tval,
              "pval" = pval))
}