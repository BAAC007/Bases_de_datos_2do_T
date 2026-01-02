#Hecho con stock.

import mysql.connector 
import matplotlib.pyplot as pt

conexion = mysql.connector.connect(
    host="localhost",user="bryan",password="Clientes123$",database="personas"
)                                      
cursor = conexion.cursor() 

cursor.execute('''SELECT 
                  COUNT(stock) AS numero,
                  stock
                  FROM productos
                  GROUP BY stock
                  ORDER BY numero DESC;''') 

filas = cursor.fetchall()

etiquetas = [
    'Baguette',
    'Fruit Salad',
    'Chicken Stir-Fry',
    'Apple Crisp',
    'Pasta with Tomato Sauce',
    'Veggie Burger',
    'Fish Tacos',
    'Guacamole Bowl',
    'Vegetable Soup',
    'Cheese Omelette',
    'Grilled Chicken Wrap',
    'Salad with Tuna Fish',
    'Mixed Vegetables Stir-Fry',
    'Beef Fajita',
    'Tomato and Mozzarella Pizza'
]

cantidades = [
    50,
    30,
    45,
    35,
    60,
    40,
    35,
    20,
    55,
    38,
    45,
    30,
    50,
    42,
    32
]


print(cantidades)
print(etiquetas)

pt.pie(cantidades, labels=etiquetas, autopct='%1.1f%%')
pt.axis('equal')  # Para que el gráfico sea circular
pt.show()