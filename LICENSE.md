# GRAFICAS DE MTCARS

##  GRAFICOS


```
#EDA SCATTER PLOT mtcars

plot(mtcars$mpg ~ mtcars$cyl,
     xlab ='Cilindros',ylab ='millas por galon',
     main='Relacion cilindros y millas por galon')


```

![image](https://user-images.githubusercontent.com/72534486/217407139-29129c14-c3bb-45c9-a67d-2258da609a5d.png)


```
#EDA SCATTER PLOT mtcars

plot(mtcars$mpg ~ mtcars$hp,
     xlab ='Caballos de fuerza',ylab ='millas por galon',
     main='Relacion Caballos de fuerza y millas por galon')



```

![image](https://user-images.githubusercontent.com/72534486/217407225-6fece192-4a3f-47a6-a2e5-47aa0359962e.png)


# EDA con histogramas.

# HISTOGRAMA mtcaras  hist



```

hist(mtcars$hp,
      geom="histogram",
      xlab="caballos de fuerza",
      main="carros segun caballos de fuerza")


```

![image](https://user-images.githubusercontent.com/72534486/217410391-1c212900-b560-465d-8add-a53757879002.png)

```

hist(mtcars$hp, 
     xlab='caballos de fuerza', 
     main='Carros segun caballos de fuerza',
     col='blue' )

```

![image](https://user-images.githubusercontent.com/72534486/217410524-db6a30d2-5e37-4be0-b554-83a663994f6f.png)


# NOTA 📝

* tener en cuenta que para que el codigo del histograma ejecute o funcione correctamente debe instalar el paquete y la libreria ggplot2.

* Tambien existe otra funcion sin intalar libreria, aunque un poco mas sencillo el histograma, se llama --> hist(mtcars$hp) 
```

install.packages("ggplot2")
library(ggplot2)


qplot(mtcars$hp,
      geom="histogram",
      xlab="Caballos de fuerza",
      main="Carros según caballos de fuerza"

```


