#Hecho con gráfico de barras.

import mysql.connector 
import matplotlib.pyplot as pt

conexion = mysql.connector.connect(
    host="localhost",user="bryan",password="Clientes123$",database="personas"
)                                      
cursor = conexion.cursor() 

cursor.execute("SELECT nombre, peso FROM productos;")

filas = cursor.fetchall()
conexion.close()  # Always close connection!

# Separate data
etiquetas = [fila[1] for fila in filas]  # stock names
peso = [fila[0] for fila in filas]    # counts

pt.figure(figsize=(12, 6))
pt.bar(peso, etiquetas)
pt.xlabel("Productos")
pt.ylabel("Peso")
pt.xticks(rotation=45, ha='right')
pt.tight_layout()  # Prevents label cutoff
pt.show()