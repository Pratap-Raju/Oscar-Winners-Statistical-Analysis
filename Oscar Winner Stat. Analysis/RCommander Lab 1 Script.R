
Dataset <- read.table("C:/Users/kolpr/Downloads/Lab1-Data.txt", header=TRUE, stringsAsFactors=TRUE, sep="\t", 
  na.strings="NA", dec=".", strip.white=TRUE)
local({
  .Table <- with(Dataset, table(CONTINENT))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
local({
  .Table <- with(Dataset, table(BP))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
Dataset <- within(Dataset, {
  SEASON <- Recode(BM, 'c(12, 1, 2 ) =  "Winter";c( 3, 4, 5 ) =  "Spring";c( 6, 7, 8 ) =  "Summer";c( 9, 10, 11 ) =  "Fall"', as.factor=TRUE, to.value="=", interval=":", separator=";")
})
local({
  .Table <- with(Dataset, table(SEASON))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})
library(abind, pos=16)
local({
  .Table <- xtabs(~GENDER+SEASON, data=Dataset)
  cat("\nFrequency table:\n")
  print(.Table)
  .Test <- chisq.test(.Table, correct=FALSE)
  print(.Test)
})


# 1. Force recalculation of AGE just in case 
Dataset$AGE <- with(Dataset, YEAR - BY - 1)

# 2. Reset any blocked graphics devices
graphics.off() 

# 3. Create the histogram using the standard R function (more reliable than 'Hist')
hist(Dataset$AGE, 
     breaks = seq(20, 100, by = 10), 
     col = "darkgray", 
     main = "Distribution of Ages for All Oscar Winners", 
     xlab = "Age (Years)", 
     ylab = "Number of Winners",
     xaxt = "n")

# 4. Manually add the 10-year labels to the axis
axis(1, at = seq(20, 100, by = 10))

# Reset graphics and plot histograms by Gender
graphics.off()
with(Dataset, Hist(AGE, groups=GENDER, scale="frequency", 
     breaks=seq(20, 100, by=10), col="thistle", 
     xlab="Age (Years)", ylab="Number of Winners",
     main="Age Distribution by Gender"))
library(e1071, pos=17)
numSummary(Dataset[,"AGE", drop=FALSE], groups=Dataset$GENDER, statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
Boxplot(AGE ~ GENDER, data=Dataset, id=list(method="y"))
numSummary(Dataset[,"AGE", drop=FALSE], groups=Dataset$GENDER, statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))

