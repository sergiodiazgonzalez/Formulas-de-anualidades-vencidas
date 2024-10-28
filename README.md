# Formulas-de-anualidades-vencidas
Las anualidades donde los pagos se realizan al final de cada período de pago se llaman anuaidades vecidas y su monto es el valor acumulado de una suceción de pagos iguales al final de cada pago.
```{r}
source("https://raw.githubusercontent.com/sergiodiazgonzalez/Formulas-de-anualidades-vencidas/refs/heads/main/AnualidadesVencidas.R")
```
## Cálculo de valor futuro
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: A=$3,000 t=8 r=0.05
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada :
Anualidad=3000
NumeroDeAnualidades=8
TasaDeInteres=0.05
# Calculamos el valor futuro
VF=ValorFuturo(A=Anualidad,t=NumeroDeAnualidades,r=TasaDeInteres)
#Imprimimos el resultado:
VF
```
## Cálculo de anualidad con valor futuro
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: VF=$50,000 t=8 r=0.04
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada:
ValorFuturo=50000
NumeroDeAnualidades=8
TasaDeIntereses=0.04
# Calculamos la anualidad
A=AnualidadValorFuturo(VF=ValorFuturo,t=NumeroDeAnualidades,r=TasaDeIntereses)
#Imprimimos el resultado:
A
```
## Cálculo de Número de Pagos a plazo con valor futuro
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: VF=$40,000 A=$2,000 r=0.03
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada:
ValorFuturo=40000
Anualidad=2000
TasaDeIntereses=0.03
# Calculamos el número de pagos
t=NumeroDePagosValorFuturo(VF=ValorFuturo,A=Anualidad,r=TasaDeIntereses)
#Imprimimos el resultado:
t
```
## Cálculo de valor actual
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: A=$1,200 t=6 r=0.05
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada:
Anualidad=1200
NumeroDeAnualidades=6
TasaDeIntereses=0.05
# Calculamos el valor actual
VA=ValorActual(A=Anualidad,t=NumeroDeAnualidades,r=TasaDeIntereses)
#Imprimimos el resultado:
VA
```
## Cálculo de anualidad con valor actual
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: VA=$10,000 t=5 r=0.04
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada:
ValorActual=10000
NumeroDeAnualidades=5
TasaDeIntereses=0.04
# Calculamos la anualidad
A=AnualidadValorActual(VA=ValorActual,t=NumeroDeAnualidades,r=TasaDeIntereses)
#Imprimimos el resultado:
A
```

# 6. Anualidad (A) conociendo el valor actual (VA), tasa de interés (i) y número de pagos (n)
anualidad_actual = function(PV, i, n) {
  A = (VA * i) / (1 - (1 + i)^(-n))
  return(A)
}

# Ejemplo
```
A = anualidad_actual(10000, 0.05, 10)
```


# 7. Número de pagos (n) conociendo el valor actual (PV), anualidad (A) y la tasa de interés (i)
numero_pagos_actual = function(PV, A, i) {
  n = log(A / (A - PV * i)) / log(1 + i)
  return(n)
}

# Ejemplo
```
n = numero_pagos_actual(10000, 1000, 0.05)
```


# 8 Tasa de interés (i) conociendo el valor actual (VA), número de pagos (n) y la anualidad (A)
tasa_actual <- function(VA, A, n) {
  func <- function(i) {
    VA - A * ((1 - (1 + i)^(-n)) / i)
  }
  
  # Verifica que los límites del intervalo sean válidos (función cambia de signo)
  lower <- 0.0001  # Evitar división por cero en el límite inferior
  upper <- 1
  f.lower <- func(lower)
  f.upper <- func(upper)
  
  if (is.na(f.lower) || is.na(f.upper)) {
    stop("No se puede calcular en el intervalo dado.")
  }
  
  # Usar uniroot solo si los signos son diferentes
  if (f.lower * f.upper > 0) {
    stop("La función no cambia de signo en el intervalo dado.")
  }
  
  i <- uniroot(func, c(lower, upper))$root
  return(i)
}

# Ejemplo para tasa de interés futura
```
i = tasa_actual(10000, 1000, 10)
```
