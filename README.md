# Formulas-de-anualidades-vencidas
Las anualidades donde los pagos se realizan al final de cada período de pago se llaman anuaidades vecidas y su monto es el valor acumulado de una suceción de pagos iguales al final de cada pago.
```{r}
source("https://raw.githubusercontent.com/sergiodiazgonzalez/Formulas-de-anualidades-vencidas/refs/heads/main/AnualidadesVencidas1.R")
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

## Cálculo de número de Pagos a plazo con valor actual
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: VA=$8,000 A=$1,500 r=0.06
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entrada:
ValorActual=8000
Anualidad=1500
TasaDeIntereses=0.06
# Calculamos el número de pagos
t=NumeroDePagosValorActual(VA=ValorActual,A=Anualidad,r=TasaDeIntereses)
#Imprimimos el resultado:
t
```

## Cálculo de Tasa del periodo con valor futuro
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: VF=$83,724.03661 A=$1,200 t=60
Se realizan los cálculos 
```{r}
# Creamos objetos con los valores de entrada:
ValorFuturo=83724.03661
Anualidad=1200
NumeroDeAnualidades=60
# Calculamos la tasa del periodo
r=TasaDelPeriodoValorFuturo(VF=ValorFuturo,A=Anualidad,t=NumeroDeAnualidades)
# Imprimimos el resultado
r
```
## Cálculo de Tasa del periodo con valor actual
Para ilustrar el ejemplo, se tiene el siguiente ejercicio: VA=$6090.83 A=$1200 t=6
Se realizan los cálculos
```{r}
# Creamos objetos con los valores de entradad:
ValorActual=6090.83
Anualidad=1200
NumeroDeAnualidades=6
# Calculamos la tasa del periodo
r=TasaDelPeriodoValorActual(VA=ValorActual,A=Anualidad,t=NumeroDeAnualidades)
# Imprimimos el resultado
r
```
