library(palmerpenguins)
library(ggplot2)
data(penguins)

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_gray()

# built in themes ####
# simple
ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_bw()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_minimal()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_classic()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_void()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_light()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_linedraw()

# not simple
ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_dark()

# custom themes - from other packages ####
library(ggthemes)

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_clean()

# based on other formats
ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_economist()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_excel()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_fivethirtyeight()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_hc()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_map() # same as theme void?

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_solarized()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_stata()

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_tufte() # this one has serif-font

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+
  theme_wsj()

devtools::install_github("MatthewBJane/theme_park")
library(ThemePark)

g <- ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()

g +theme_alien()
g+theme_avatar()
g+theme_barbie()
g+theme_gameofthrones()
g+theme_godfather()

# create your own ####
?theme()

# code underlying godfather theme
godfather_theme_colors <- c(
  text    = '#d3cfc3',
  panel   = '#030303',
  border  = '#d3cfc3',
  lighter = '#d3cfc3',
  light   = '#912411',
  medium  = '#d3cfc3',
  dark    = '#912411'
)

font_family = ifelse(godfather_font,"godfather","sans") # use this line if you have a custom font
if (godfather_font) {
  initialize_font(name = "Philosopher", family = "godfather")
}

ggplot2::theme(
  panel.grid.minor = element_blank(),
  panel.grid.major = element_blank(),
  text = element_text(color = godfather_theme_colors["text"], family = font_family),
  title = element_text(size=20),
  panel.background = element_rect(fill = godfather_theme_colors["panel"]),
  panel.border = element_rect(fill = NA, color = godfather_theme_colors["border"],linewidth=1.2),
  plot.background = element_rect(fill = godfather_theme_colors["panel"]),
  axis.title = element_text(size=17),
  axis.text = element_text(size=13,color = godfather_theme_colors["text"]),
  axis.ticks = element_line(color = godfather_theme_colors["border"],linewidth=1),
  legend.background = element_rect(fill = godfather_theme_colors["panel"], color = NA),
  strip.background = element_rect(fill = godfather_theme_colors["lighter"], colour = godfather_theme_colors["border"]),
  strip.text = element_text(colour = godfather_theme_colors["text"]),
  ...
)


# pumpkin data ####
setwd("/Users/haley/Documents/GitHub/themes_ggplot2_workshop/")
library(readr)
pumpkin_data <- read_csv("pumpkin_production.csv")
pumpkin_data$pumpkin_lbs <- pumpkin_data$pumpkin_kcwt*10

pumpkin_plot<-ggplot(pumpkin_data, aes(year, pumpkin_lbs))+
  geom_col()+
  labs(x="Year", y="Pumpkin production (lbs)", title = "Pumpkin Production", subtitle= "in the United States over the years 2000-2022")

pumpkin_plot+theme_minimal()

pumpkin_plot+
  theme(panel.background = element_rect(fill = "orange"))
pumpkin_plot+
  theme(plot.title = element_text(color = "orange"))
pumpkin_plot+
  theme(plot.background = element_rect(fill = "orange"))
pumpkin_plot+
  theme(panel.grid = element_line(color = "orange"))
pumpkin_plot+
  theme(axis.title.x = element_text(color = "orange"))
pumpkin_plot+
  theme(axis.text.x = element_text(color = "orange"))
pumpkin_plot+
  theme(axis.text.x = element_text(color = "orange", size=20))
pumpkin_plot+
  theme(axis.ticks.x = element_line(color = "orange", linewidth = 2))
pumpkin_plot+theme(panel.background = element_blank(),
                   panel.grid = element_line(color = "orange"))
pumpkin_plot+theme(text = element_text(color = "orange"))

library(ggsci)
pumpkin_plot+theme_few()
pumpkin_plot+theme(text = element_text(family = "sans", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "serif", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "HersheySerif", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "HersheyGothicEnglish", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "HersheyGothicItalian", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "HersheyGothicGerman", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "mono", face = "bold"))
pumpkin_plot+theme(text = element_text(family = "HersheyScript", face = "bold", size = 15))

library(tidyverse)

candy_data <- read_csv("candy_production.csv")
names(candy_data) <- c("date", "amount")
candy_data <- candy_data %>% 
  separate(date, into=c("year", "month", "day"), remove=F)
candy_plot <- ggplot(candy_data, aes(date, amount))+
  geom_line()+
  geom_point(data = candy_data[candy_data$month == "10",], aes(color = ifelse(month == "10", "October", "Rest of Year")))+
  scale_color_manual(values = c("orange", "black"))+
  theme(legend.position = "bottom")
candy_plot

ggplot(candy_data, aes(date, amount))+
  geom_line(aes(color = month))+
  scale_color_manual(values = c(rep("grey", times = 9), "orange", rep("grey", times = 2)))

                     