# coursera-data-products

## Shiny App: Simple Data Explorer
Purpose: Allow users to select a dataset, choose variables, and visualize data dynamically.
Features:
- Dropdown to select an R dataset (e.g., mtcars, iris, airquality).
- Checkbox to allow the user to choose variables for visualization.
- Reactive plot output based on user selections.

### File Structure
- ui.R
- server.R

## Steps to Deploy on RStudio's Shiny Server
Install shiny: `install.packages("shiny")`
Save `ui.R` and `server.R` in a folder (e.g., ShinyApp/).
Deploy using `rsconnect` package or host it on `shinyapps.io`.
Push code to `GitHub` and share the link.
