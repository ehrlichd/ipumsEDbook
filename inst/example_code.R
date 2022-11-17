## R code to read from excel


## Install the readxl package, if its not already present
if(!require(readxl)){
  install.packages(readxl)
}


data <- readxl::read_excel("data_template.xlsx")


## Summarize Data
#### Note na.rm=T if missing values present.

mean(data$Height_inches, na.rm = T)
median(data$Height_inches, na.rm = T)
range(data$Height_inches, na.rm = T)

#### Or use summary
summary(data$Height_inches)

## Mode Code
#### Code to calculate mode


my_mode <- function(x){
  tt <- table(x) ## find frequencies
  tt <- tt[order(tt, decreasing = TRUE)] ## resort based on freq

  ## check number of modes
  max <- max(tt)
  n_max <- sum(tt==max)


  if(n_max > 1 ){
    warning("More than one mode detected")
    return(tt[tt==max])
  } else {
    ## return only the first value
    return(tt[1]) ## return whatever the highrst frequency is
  }


}

## Mode Results


my_mode(data$Height_inches)


## Visualize

#### Boxplot
boxplot(data$Height_inches)

#### Histogram
hist(data$Height_inches, main = "Histogram of Height", xlab = "Height (in)")

## Categorical Data

#### Summarize
birth_freq <- table(data$Birth_Month)

birth_freq

#### Visualize


barplot(birth_freq)


