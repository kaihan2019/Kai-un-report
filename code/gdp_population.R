2+2
library(tidyverse) 


gapminder_1997<-read_csv("gapminder_1997.csv")

name <-"Ben"
name

age <- 26
age
names<-"(Harry Potter)"
name

bens_name <- "Ben"


Flower<-"marigold"

?read_csv()
``

round(3.1415,2)

flower <- "marigold"
flower <- "rose"

Sys.Date() # outputs the current date
getwd()#outputs the current working directory
sum(5,6) #sum of these numbers


#plotting
ggplot(data = gapminder_1997) +
  aes(x = gdpPercap) +
  labs(x = "GDP Per Capita") +
  aes (y = lifeExp)+
  labs(y = "Life Expectancy")+
  geom_point()+
  labs(title = "Do people in wealthy countries live longer")+
  aes(color = continent)+
  scale_color_brewer(palette = "Set1")+
  aes(size = pop/100000)+
  labs(size = "Population (in millions)")

ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp, color = continent, size = pop/1000000)+
  geom_point()+
  scale_color_brewer(palette = "Set1")+
  labs(x = "GDP Per Capita", y = "Life Expectancy", title = "Do people in wealthy countries live longer?", size = "Polpulation (in millions)")

# plotting for data exploration
gapminder_data <- read_csv("gapminder_data.csv")

ggplot(data = gapminder_data)+
  aes(x = year, y = lifeExp, color = continent)+
  geom_point()

str(gapminder_data)

ggplot(data = gapminder_data)+
  aes(x = year, y = lifeExp, color = continent, group = country)+
  geom_line()

ggplot(data = gapminder_data)+
  aes(x = continent, y = lifeExp)+
  geom_boxplot()

ggplot(data = gapminder_data)+
  aes(x = continent, y = lifeExp)+
  geom_violin()

ggplot(data = gapminder_1997)+
  aes(x = continent, y = lifeExp)+
  geom_violin()+
  geom_point()

ggplot(data = gapminder_1997)+
  aes(x = continent, y = lifeExp)+
  geom_violin()+
  geom_jitter()

ggplot(data = gapminder_1997)+
  aes(x = continent, y = lifeExp)+
  geom_jitter()+
  geom_violin()

ggplot(data = gapminder_1997, aes(x = continent, y = lifeExp))+
  geom_violin(fill = "green")+
  geom_jitter(aes(size = pop))

ggplot(data = gapminder_1997, aes(x = continent, y = lifeExp))+
  geom_violin(aes(fill = continent))+
  geom_jitter(alpha = 0.7)

ggplot(gapminder_1997)+
  aes(x = lifeExp)+
  geom_histogram(bins = 40)

ggplot(gapminder_1997)+
  aes(x = lifeExp)+
  geom_density()

#ggplot2 Themes
ggplot(gapminder_1997)+
  aes(x = lifeExp)+
  geom_histogram(bins = 40)+
  theme_minimal()

ggplot(gapminder_1997)+
  aes(x = lifeExp)+
  geom_histogram()+
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust = 0.5))

#Facet

ggplot(gapminder_1997)+
  aes(x = gdpPercap, y = lifeExp) +
  geom_point()+
  facet_wrap(vars(continent))+
  facet_grid(rows = vars(continent))

ggsave("awesome_plot.jpg", width = 6, height = 4)

violin_plot <-ggplot(data = gapminder_1997)+
  aes(x = continent, y = lifeExp)+
  geom_violin(aes(fill = continent))
violin_plot

violin_plot +theme_bw()

violin_plot <- violin_plot + theme_bw()

ggsave(plot = violin_plot,
       filename =  "awesome_violin_plot.jpg", width = 6, height = 4)

install.packages(c("gganimate", "gifski"))
library(gganimate)
library(gifski)


ggplot(data = gapminder_data)+
  aes(x = log(gdpPercap), y = lifeExp, size = pop, color = continent)+
  geom_point()

staticHandsPlot<- ggplot(data = gapminder_data)+
  aes(x = log(gdpPercap), y = lifeExp, size = pop/1000000, color = continent)+
  geom_point(alpha = 0.5)+
  scale_color_brewer(palette = "Set1")+
  labs(x = "GDP pER Capita", y = "Life Expectancy", color = "continent", size = "Population(in millions)")
  theme_classic()

