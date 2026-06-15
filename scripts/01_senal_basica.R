# scripts/01_senal_basica.R
# Primera señal: una senoidal limpia

dir.create("figuras", showWarnings = FALSE)

tiempo <- seq(0, 1, length.out = 200)
frecuencia <- 5
senal <- sin(2 * pi * frecuencia * tiempo)

plot(
  tiempo, senal,
  type = "l",
  main = "Señal senoidal de 5 Hz",
  xlab = "Tiempo (s)",
  ylab = "Amplitud"
)

png("figuras/senal_basica.png", width = 900, height = 500)
plot(
  tiempo, senal,
  type = "l",
  main = "Señal senoidal de 5 Hz",
  xlab = "Tiempo (s)",
  ylab = "Amplitud"
)
dev.off()