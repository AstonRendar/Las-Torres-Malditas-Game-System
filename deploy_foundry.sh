#!/bin/bash

# Carga las variables de entorno
source "$(dirname "$0")/.env"

# Copiamos el contenido de la carpeta del sistema de juego a la carpeta de sistemas de Foundry VTT
# Asegúrate de que el directorio de destino existe
mkdir -p "$DESTINO"
# Verifica si el directorio de origen existe
if [ ! -d "$ORIGEN" ]; then
  echo "El directorio de origen no existe. Por favor, verifica la ruta."
  exit 1
fi

# Si el directorio de destino ya existe, se sobrescribirá su contenido
# Puedes cambiar la ruta de origen y destino según sea necesario
# Nota: Asegúrate de que el usuario que ejecuta este script tenga permisos para escribir en el directorio de destino
cp -r "$ORIGEN"/* "$DESTINO/"
# Verifica si la copia fue exitosa
if [ $? -eq 0 ]; then
  echo "Sistema de juego copiado exitosamente a Foundry VTT."
else
  echo "Error al copiar el sistema de juego."
  exit 1
fi
# Reinicia Foundry VTT para que los cambios surtan efecto
echo "Reiniciando Foundry VTT..."
pkill -f "foundryvtt" && sleep 2
# Vaciamos el log de Foundry VTT
> "$LOG_PATH" 2>&1
# Inicia Foundry VTT
"$FOUNDRY_PATH" > "$LOG_PATH" 2>&1 &
# Verifica si Foundry VTT se inició correctamente
if [ $? -eq 0 ]; then
  echo "Foundry VTT se ha iniciado correctamente."
else
  echo "Error al iniciar Foundry VTT."
  exit 1
fi
# Fin del script    