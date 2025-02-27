#!/bin/bash

# Este script consulta el atime de los ficheros en el directorio de forma recurrente
# y los borra si llevan más de $DIAS_SIN_LEER_FICHERO

# Creado en septiembre de 2018

DIAS_SIN_LEER_FICHERO=7
DIAS_SIN_LEER_DIRECTORIO=7

DIRECTORIO=/var/sambashares/comun/

# Borra primero los ficheros
find $DIRECTORIO -type f -atime +$DIAS_SIN_LEER_FICHERO -exec rm {} \;

# Y ahora borra los directorios que estén vacíos:
find $DIRECTORIO -mindepth 1 -maxdepth 20 -type d -empty -mtime +$DIAS_SIN_LEER_DIRECTORIO -delete
