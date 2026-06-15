# scripts/02_senal_con_ruido.R
# Señal limpia + ruido gaussiano

dir.create("datos", showWarnings = FALSE)
dir.create("figuras", showWarnings = FALSE)

set.seed(123)

tiempo <- seq(0, 1, length.out = 300)
frecuencia <- 5

senal_limpia <- sin(2 * pi * frecuencia * tiempo)
ruido <- rnorm(length(tiempo), mean = 0, sd = 0.25)

senal_ruidosa <- senal_limpia + ruido

datos <- data.frame(
  tiempo = tiempo,
  senal_limpia = senal_limpia,
  senal_ruidosa = senal_ruidosa
)

write.csv(datos, "datos/senal_ruidosa.csv", row.names = FALSE)

png("figuras/senal_con_ruido.png", width = 900, height = 500)

plot(
  tiempo, senal_ruidosa,
  type = "l",
  main = "Señal de 5 Hz con ruido",
  xlab = "Tiempo (s)",
  ylab = "Amplitud"
)

lines(tiempo, senal_limpia, lwd = 2)

legend(
  "topright",
  legend = c("Ruidosa", "Limpia"),
  lwd = c(1, 2)
)

dev.off()

summary(datos)
