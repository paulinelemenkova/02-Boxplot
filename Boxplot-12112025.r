library(RColorBrewer)

setwd("/Users/polinalemenkova/Documents/R/02_Boxplot")

df <- read_csv("Table_export_quantity.csv")
#head(df)

# Boxplots Grouping by 'category' using fill  for box plots and bar plots
p <- ggplot(df, aes(Item, Value, group = Item, fill = Item)) +
    geom_boxplot(alpha=0.6, position = "dodge2",
        box.linewidth = 0.1, median.colour = "red",
        median.linewidth = 0.3,
        notch = F, outlier.colour="red", outlier.shape=8, outlier.alpha = 0.5,
        staple.linewidth = 0.3) +
    scale_y_continuous(
        name = "Value (in 1000 tons)",
        labels = function(y) y / 1000
        ) +
    labs(title = "Export of major forestry products from Italy (quantity in 1000 t), 1961-2023. Data source: FAO",
        x = "Forestry product categories") +
    theme(
        legend.position = "bottom",
        legend.text = element_text(size = 10),
        axis.text.x = element_text(angle = 15, hjust = 1))
p
ggsave("Fig_export_boxplots.jpg", plot = p, dpi = 300,
    width = 30, height = 25, units = "cm")

#  theme_linedraw()
#  theme_light()
#  theme_classic()
#  theme_minimal() theme_classic()
