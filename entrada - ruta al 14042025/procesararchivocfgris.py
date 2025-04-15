def procesar_linea(linea, estructura):
    resultado = ""
    idx = 0  # Índice en la línea original

    for i, campo in enumerate(estructura):
        if i % 2 == 0:
            # Es un campo de datos: extraer y avanzar el índice
            resultado += linea[idx:idx + campo]
            idx += campo
        else:
            # Es un espacio: agregar espacio, NO avanzar índice
            resultado += " "

    return resultado

def procesar_archivo(archivo_entrada, archivo_salida, estructura):
    with open(archivo_entrada, 'r', encoding='utf-8') as entrada, \
         open(archivo_salida, 'w', encoding='utf-8') as salida:

        for linea in entrada:
            linea = linea.rstrip('\n')  # Eliminar salto de línea
            linea_procesada = procesar_linea(linea, estructura)
            salida.write(linea_procesada + '\n')

# Ejemplo de estructura: [longitud campo, espacio, longitud campo, espacio, ...]
estructura = [4,1,3,1,8,1,8,1,2,1,4,1,3,1,1,1,3,1,1,1,2,1,5,1,4,1,2,1,1,1,1,1,3,1,5,3,1,1,4,1,4,1,4,1,7,1,7,1,15,1,15,1,15,1,15,1,1,1,12,1,3,1,17,1,20,1,2,1,2,1,3,1,4,1,4,1,1,1,1,1,19,1,20,1,3,1,1]

# Cambiá estos paths según tus archivos
archivo_entrada = 'cfgris.250411.txt'
archivo_salida = 'cfgris.250411_procesado.txt'

# Ejecutar el procesamiento
procesar_archivo(archivo_entrada, archivo_salida, estructura)
