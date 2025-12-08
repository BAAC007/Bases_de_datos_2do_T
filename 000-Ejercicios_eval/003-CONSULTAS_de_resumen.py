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

pt.pie(edades, labels=etiquetas, autopct='%1.1f%%')
pt.axis('equal')  # Para que el gráfico sea circular
pt.show()

#Y el resultado que nos has dado es:
#[(21,)]