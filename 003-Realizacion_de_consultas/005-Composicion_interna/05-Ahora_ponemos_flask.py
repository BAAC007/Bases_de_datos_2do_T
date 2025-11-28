import mysql.connector 
from flask import Flask

conexion = mysql.connector.connect(
  host="localhost",
  user="tiendaclase",
  password="TiendaClase*123$",
  database="tiendaclase"
)                                      
app = Flask(__name__)

@app.route("/")
def inicio():
  return render_template(
      "backoffice.html",
      mis_tablas = tablas,
      mis_columnas = columnas
  ) # Envio las tablas a HTML
  
 


if __name__ == "__main__":
  app.run(debug=True) 