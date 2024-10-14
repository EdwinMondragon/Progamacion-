area <- function(r){3.14*r*r}
area(20)
area(7)


# Índice de masa corporal -------------------------------------------------

calcular_IMC <- function(peso, altura) {
  # Comprobar si el peso y la altura son numéricos
  if (!is.numeric(peso) || is.na(peso)) {
    return("Por favor, inserte un peso válido (número).")
  }
  if (!is.numeric(altura) || is.na(altura)) {
    return("Por favor, inserte una altura válida (número).")
  }
  
  # Comprobar si el peso y la altura son mayores que cero
  if (peso <= 0) {
    return("El peso debe ser mayor que cero.")
  }
  if (altura <= 0) {
    return("La altura debe ser mayor que cero.")
  }
  
  # Calcular el IMC
  imc <- peso / (altura^2)
  
  # Retornar el resultado con dos decimales
  return(round(imc, 2))
}
resultado <- calcular_IMC(75, 1.75)  # Peso en kg, altura en metros
print(resultado)

calcular_IMC <- function(peso, altura) {
  # Comprobar si el peso y la altura son numéricos
  if (!is.numeric(peso) || is.na(peso)) {
    return("Por favor, inserte un peso válido (número).")
  }
  if (!is.numeric(altura) || is.na(altura)) {
    return("Por favor, inserte una altura válida (número).")
  }
  
  # Comprobar si el peso y la altura son mayores que cero
  if (peso <= 0) {
    return("El peso debe ser mayor que cero.")
  }
  if (altura <= 0) {
    return("La altura debe ser mayor que cero.")
  }
  
  # Calcular el IMC
  imc <- peso / (altura^2)
  imc <- round(imc, 2)
  
  # Clasificación del IMC
  if (imc < 18.5) {
    clasificacion <- "Bajo peso"
  } else if (imc >= 18.5 && imc < 24.9) {
    clasificacion <- "Peso normal"
  } else if (imc >= 25 && imc < 29.9) {
    clasificacion <- "Sobrepeso"
  } else {
    clasificacion <- "Obesidad"
  }
  
  # Devolver el IMC y la clasificación
  return(paste("IMC:", imc, "-", clasificacion))
}
resultado <- calcular_IMC(70, 1.75)  # Peso en kg, altura en metros
resultado
