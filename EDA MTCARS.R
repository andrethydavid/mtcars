#EDA SCATTER PLOT mtcars

plot(mtcars$mpg ~ mtcars$cyl,
     xlab ='Cilindros',ylab ='millas por galon',
     main='Relacion cilindros y millas por galon')

plot(mtcars$mpg ~ mtcars$hp,
     xlab ='Caballos de fuerza',ylab ='millas por galon',
     main='Relacion Caballos de fuerza y millas por galon')


#HISTOGRAMA mtcaras  hist

hist(mtcars$hp,
      geom="histogram",
      xlab="caballos de fuerza",
      main="carros segun caballos de fuerza")





hist(mtcars$hp, 
     xlab='caballos de fuerza', 
     main='Carros segun caballos de fuerza',
     col='blue' )



summary(mtcars$model)

ggplot(mtcars, aes(x=hp))+
  geom_histogram()+
  labs(x='Caballos de fuerza',
       y='Cantidad de carros',
       title= 'Cabballos de fuerza en carro seleccionados')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x='Caballos de fuerza',
       y='Cantidad de carros',
       title= 'Cabballos de fuerza en carro seleccionados')+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot() + geom_histogram(data=mtcars,
                          aes(x=hp), fill = 'blue', color = 'red',
                          binwidth = 20)+
  labs(x='Caballos de fuerza',
       y='Cantidad de carros',
       title= 'Caballos de fuerza en carro seleccionados')+
  xlim(c(80,288))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#BOXPLOT 
boxplot(mtcars$hp,
        ylab="caballos de fuerza",
        main="caballos de fuerza en carros mtcars")


boxplot(mtcars, aes(x=vs, y=mpg, fill=vs))+
  geom_boxplot()+
  labs(x="Tipo de motor", y="Millas por galon",
       title = "Millas por galon segun tipo de motor")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


mtcars <- mean(mtcars$GDP.PC)
mtcars

ggplot(mtcars,aes(x=am, y=mpg, fill=am))+
  geom_boxplot()+
  labs(x="tipo de caja",y="millas por galon",
       title="Millas por galon segun tipo de caja-mtcars")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


#
mtcars$am <- factor(mtcars$am, levels = c(TRUE,FALSE),
                    labels = c("manual","automatico"))


ggplot(mtcars,aes(hp,qsec))+
geom_point(aes(color="red", size=cyl))+
labs(x="Caballos de fuerza ", y="Tiempo en 1/4 millas", title="Caballo velocidad segun cilindraje y tipo de caja")+theme(panel.background = element_blank(), panel.grid.major = element_blank())


pairs(mtcars[,2:6])