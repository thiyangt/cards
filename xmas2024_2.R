library(aRtsy)
library(showtext)
library(ggplot2)

font_add_google("Dancing Script", "dancing") 
showtext_auto() 

# Load necessary libraries
library(ggplot2)
library(showtext)

# Add a fancy font
font_add_google("Dancing Script", "dancing")  # Example of a fancy font from Google Fonts
showtext_auto()  # Enable custom fonts

# Set seed and create the canvas
set.seed(8)
canvas <- canvas_flame(
  colors = c("#ab00ff", "#8300c4", "#4c00a4",
              "#31004a","#33007b",
             "#FFC0CB", "#FFB6C1",
             "#FF69B4", "#FF1493"),
  symmetry = 5

)

# Annotate text on the canvas
canvas <- canvas +
  # Main greeting text
  annotate(
    "text",
    x = 500, y = 500,  # Adjust coordinates to center on your canvas
    label = "Merry Christmas",
    color = "green",
    size = 20,  # Adjust size for prominence
    family = "dancing",  # Fancy font
    fontface = "bold"
  ) +
  # Footnote or credit
  annotate(
    "text",
    x = 500, y = 300,  # Adjust coordinates for positioning below the main text
    label = "R-Ladies, Colombo, Sri Lanka",
    color = "magenta",
    family = "dancing",
    size = 10,  
    fontface = "italic",
    fontface = "bold"
  )

# Display the card
print(canvas)

