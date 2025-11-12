library(RColorBrewer)

setwd("/Users/polinalemenkova/Documents/R/02_Boxplot")

df <- read_csv("Table_export_quantity.csv")
head(df)
#head(df)
# Top Left: Set a unique color with fill, colour, and alpha
ggplot(df, aes(x=Item, y=Value)) +
    geom_boxplot(color="red", fill="orange", alpha=0.2)

# Boxplots Grouping by 'category' using fill  for box plots and bar plots
ggplot(df, aes(Item, Value, group = Item, fill = Item)) +
    geom_boxplot(alpha=0.2) +
    scale_color_brewer(palette = "Set1")

ggplot(df, aes(x=Item, y=Value)) +
    stat_boxplot(coef = 3.5, alpha=0.2, aes(colour = Item)) +
    scale_fill_brewer(palette = "Set3") +
    labs(title = "Distribution of agricultural production in India (2000-2023): median, quartiles and outliers",
     x = "Products",
     y = "Value (kg/ha)")

ggplot(df, aes(Item, Value, fill = Item)) +
    geom_boxplot() +
    scale_fill_brewer(palette = "Set3") +
    labs(title = "Distribution of agricultural production in India (2000-2023) in kg/ha: median, quartiles and outliers",
       x = "Products",
       y = "Value (kg/ha)") +
    theme_gray()
#    theme_linedraw()
#    theme_light()
#   theme_classic()
#  theme_minimal() theme_classic()
