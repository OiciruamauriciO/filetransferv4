import openpyxl

def texto_a_excel(nombre_archivo_txt, nombre_archivo_excel):
    # Crea un nuevo libro de Excel
    wb = openpyxl.Workbook()
    ws = wb.active

    # Lee el archivo de texto línea por línea
    with open(nombre_archivo_txt, 'r', encoding='utf-8') as archivo:
        for i, linea in enumerate(archivo, start=1):
            # Quita saltos de línea y separa por espacios
            celdas = linea.strip().split()
            # Escribe cada subcadena en una celda de la fila correspondiente
            for j, valor in enumerate(celdas, start=1):
                ws.cell(row=i, column=j, value=valor)

    # Guarda el archivo de Excel
    wb.save(nombre_archivo_excel)
    print(f"Archivo Excel guardado como '{nombre_archivo_excel}'")

# Ejemplo de uso:
texto_a_excel('cfgris.250415_ajustado.txt', 'cfgris.250415_ajustado.xlsx')
