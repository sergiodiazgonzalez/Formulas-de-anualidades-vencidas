# Se presentan funciones de anualidades vencidas 
# Autor: Sergio Díaz González

# Valor futuro de anualidades vencidas 
ValorFuturo= function(A,t,r){
  VF=A*((1+r)^t-1)/r
  
  return(VF)
}

# Anualidad con valor futuro
AnualidadValorFuturo= function(VF,t,r){
  A=VF/(((1+r)^t-1)/r)
  
  return(A)
}

# Numero de pagos con valor futuro
NumeroDePagosValorFuturo=function(VF,A,r){
  t=log(((VF*r)/A)+1)/log(1+r)
  
  return(t)
}

# Valor actual de anualidades vencidas
ValorActual= function(A,t,r){
  VA=A*(1-(1+r)^-t)/r
  
  return(VA)
} 

# Anualidad con valor actual
AnualidadValorActual= function(VA,t,r){
  A=VA/((1-(1+r)^-t)/r)
  return(A)
}

#Numero de pagos con valor actual
NumeroDePagosValorActual= function(VA,A,r){
  t=-log(1-((VA*r)/A))/log(1+r)
  return(t)
}
#Tasa del periodo con valor futuro
TasaDelPeriodoValorFuturo= function(VF,A,t){
  ecuacion = function(r) {
    LadoIzquierdo = VF / A
    LadoDerecho = ((1 + r) ^ t - 1) / r
    return(LadoIzquierdo - LadoDerecho)
  }
  
  
  resultado = uniroot(ecuacion, lower = 0.0000001, upper = 1)
  
  
  r= resultado$root
  return(r)
  
}
#Tasa del periodo con valor actual
TasaDelPeriodoValorActual= function(VA,A,t){
  ecuacion2 = function(r) {
    LadoIzquierdo = VA / A
    LadoDerecho = (1-((1+r)^-t))/r
    return(LadoIzquierdo - LadoDerecho)
  }
  
  
  resultado = uniroot(ecuacion2, lower = 0.000001, upper = 1)
  
  
  r= resultado$root
  return(r)
}
  