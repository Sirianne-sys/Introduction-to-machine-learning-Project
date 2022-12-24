library("randomForest")
data <- read.csv("mydata.csv", header=TRUE)
model <- randomForest(Species ~ ., data=data, proximity=TRUE)
head(data)
str(data)
data$Species <- as.factor(data$Species) 
summary(model)

# Load the required library
library(ggplot2)

# Create a data frame with the categorical variable and the numerical variable
df <- data.frame(
  category = c("A", "B", "C", "D", "E"),
  value = c(12, 45, 23, 56, 34)
)

# Create a histogram of the data
hist <- ggplot(data=df3, aes(x=category, y=value)) + 
  geom_col()

# Display the histogram
hist


# Create a data frame with the categorical variable and the numerical variable for the first histogram
df1 <- data.frame(
  category = c("A", "B", "C", "D", "E"),
  value = c(12, 45, 23, 56, 34)
)

# Create a data frame with the categorical variable and the numerical variable for the second histogram
df2 <- data.frame(
  category = c("A", "B", "C", "D", "E"),
  value = c(25, 32, 46, 37, 41)
)

# Combine the two data frames into a single data frame
df <- rbind(df1, df2)

# Add a column to the data frame to specify which histogram each row belongs to
df$histogram <- c(rep("Histogram 1", 5), rep("Histogram 2", 5))

# Create a histogram of the data
hist <- ggplot(data=df, aes(x=category, y=value)) +
  geom_col() +
  facet_wrap(~histogram, nrow=1)

# Display the histogram
hist
all_classes<-c( "Acca sellowiana", "Acer palmatum", "Alnus sp.",  "Arisarum vulgare", "Betula pubescens", "Bougainvillea sp.", 
       "Buxus sempervirens ", "Castanea sativa", "Celtis sp.", "Corylus avellana", "Crataegus monogyna", "Erodium sp." , 
     "Euonymus japonicus" , "Geranium sp.", "Hydrangea sp.","Ilex aquifolium", "Ilex perado ssp. azorica" ,"Magnolia grandiflora ",
    "Magnolia soulangeana", "Nerium oleander" , "Podocarpus sp.", "Populus alba" ,"Populus nigra ", "Primula vulgaris ", "Pseudosasa japonica", 
    "Quercus robur" ,"Quercus suber" ,'Salix atrocinera'  , "Tilia tomentosa", "Urtica dioica")

rf_f1score<-c(0.2857143, 0.8888889, 0.6666667 ,1.0000000, 0.5714286  ,  0.6666667, 1.0000000, 1.0000000 ,
           0.6666667, 0.8888889, 1.0000000, 0.8571429, 0.3333333, 0.5000000  , 0.4444444, 0.6666667  , 0.400000, 0.6666667,
           0.4444444, 1.0000000, 1.0000000, 0.6666667 , 0.6666667, 0.8000000  , 1.0000000, 1.0000000, 0.5454545,
           0.8000000, 0.8888889, 1.0000000)


lda_f1score<-c(0.4444444, 1.0000000 ,0.6666667, 0 ,0.8888889, 0.6666667 ,0.8888889, 0.5714286  , 0.8571429, 1.0000000,
              1.0000000, 1.0000000 ,0.4000000, 1.0000000 ,0.5714286,0.6666667,1.0000000, 0.5714286 ,0.8888889, 1.0000000,
              1.0000000, 1.0000000,0.5714286, 0.6666667 , 1.0000000, 1.0000000  ,0.6666667, 0.8571429, 1.0000000, 0.8000000)

df3 <- data.frame(category = clas, value = rf_f1score)
df4 <- data.frame(category = clas, value = lda_f1score)
df <- rbind(df3, df4)
hist <- ggplot(data=df, aes(x=category, y=value)) + geom_col() + facet_wrap(~histogram, nrow=1)
hist












