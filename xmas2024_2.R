library(aRtsy)
library(showtext)
library(ggplot2)

font_add_google("Dancing Script", "dancing") 
showtext_auto() 

# Add a fancy font
font_add_google("Dancing Script", "dancing")  # Example of a fancy font from Google Fonts
showtext_auto()  # Enable custom fonts

# Set seed and create the canvas
set.seed(15)
canvas <- canvas_flame(
  colors = c("yellow", "forestgreen",  "green"),
  symmetry = 5,
  variation = 2

)

# Annotate text on the canvas
canvas <- canvas +
  # Main greeting text
  annotate(
    "text",
    x = 500, y = 150,  # Adjust coordinates to center on your canvas
    label = "Merry Christmas",
    color = "#FF69B4",
    size = 12,  # Adjust size for prominence
    family = "dancing",  # Fancy font
    fontface = "bold"
  ) +
  # Footnote or credit
  annotate(
    "text",
    x = 500, y = 70,  # Adjust coordinates for positioning below the main text
    label = "R-Ladies, Colombo, Sri Lanka",
    color = "magenta",
    family = "dancing",
    size = 8,  
    fontface = "italic",
    fontface = "bold"
  )

# Display the card
print(canvas)

