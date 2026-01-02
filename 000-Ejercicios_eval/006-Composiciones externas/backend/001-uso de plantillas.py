import mysql.connector 
from flask import Flask

conexion = mysql.connector.connect(
  host="localhost",
  user="composiciones",
  password="composiciones",
  database="composiciones"
)                                      

app = Flask(__name__)
@app.route("/")
def inicio():
  cursor = conexion.cursor(dictionary=True) 
  cursor.execute("SELECT * FROM matriculas_join;")  
  filas = cursor.fetchall()
  return render_template("C:\Users\bc714\OneDrive\Documents\GitHub\Bases_de_datos_2do_T\000-Ejercicios_eval\006-Composiciones externas\frontend\index.html", datos = filas)

if __name__ == "__main__":
  # Pon en marcha la aplicación
  app.run(debug=True)