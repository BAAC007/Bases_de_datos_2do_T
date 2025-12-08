import matplotlib.pyplot as pt
import mysql.connector 

conexion = mysql.connector.connect(
  host="localhost",
  user="bryan",
  password="Clientes123$",
  database="personas"
)                                      
  
cursor = conexion.cursor() 
cursor.execute('''
  SELECT 
    FLOOR(AVG(edad))
  FROM clientes;
''')  

filas = cursor.fetchall()

print(filas)

edades = [22, 19, 25, 20, 23, 21, 24, 25, 18, 20, 22, 24, 17, 19, 23, 25, 21, 18, 20, 24]

etiquetas = [
    'Edad 22', 'Edad 19', 'Edad 25', 'Edad 20', 'Edad 23',
    'Edad 21', 'Edad 24', 'Edad 25', 'Edad 18', 'Edad 20',
    'Edad 22', 'Edad 24', 'Edad 17', 'Edad 19', 'Edad 23',
    'Edad 25', 'Edad 21', 'Edad 18', 'Edad 20', 'Edad 24'
]

pt.pie(edades, labels=etiquetas, autopct='%1.1f%%')
pt.axis('equal')  # Para que el gráfico sea circular
pt.show()

#Y el resultado que nos has dado es:
#[(21,)]