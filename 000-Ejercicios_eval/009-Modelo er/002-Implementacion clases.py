from typing import Optional

class Cliente:
    def __init__(self, id: Optional[int] = None, nombre: Optional[str] = None, apellidos: Optional[str] = None, email: Optional[str] = None):
        self.id = id
        self.nombre = nombre
        self.apellidos = apellidos
        self.email = email

    def __repr__(self):
        return f"Cliente(id={self.id!r}, nombre={self.nombre!r}, apellidos={self.apellidos!r}, email={self.email!r})"

class Pedido:
    def __init__(self, id: Optional[int] = None, fecha: Optional[str] = None, cliente_id: Optional[int] = None):
        self.id = id
        self.fecha = fecha
        self.cliente_id = cliente_id

    def __repr__(self):
        return f"Pedido(id={self.id!r}, fecha={self.fecha!r}, cliente_id={self.cliente_id!r})"

    # FK1: cliente_id -> cliente.id

class Lineapedido:
    def __init__(self, id: Optional[int] = None, pedido_id: Optional[int] = None, producto_id: Optional[int] = None):
        self.id = id
        self.pedido_id = pedido_id
        self.producto_id = producto_id

    def __repr__(self):
        return f"Lineapedido(id={self.id!r}, pedido_id={self.pedido_id!r}, producto_id={self.producto_id!r})"

    # FK1: pedido_id -> pedido.id
    # FK2: producto_id -> producto.id

class Producto:
    def __init__(self, id: Optional[int] = None, nombre: Optional[str] = None, precio: Optional[str] = None):
        self.id = id
        self.nombre = nombre
        self.precio = precio

    def __repr__(self):
        return f"Producto(id={self.id!r}, nombre={self.nombre!r}, precio={self.precio!r})"
    
# --- instancias de prueba ---
if __name__ == "__main__":
    # Clientes
    cliente1 = Cliente(id=1, nombre="Ana", apellidos="López García", email="ana.lopez@email.com")
    cliente2 = Cliente(id=2, nombre="Carlos", apellidos="Mendoza Ruiz", email="carlos.mendoza@email.com")

    # Productos
    producto1 = Producto(id=101, nombre="Laptop Dell Inspiron", precio="450.00")
    producto2 = Producto(id=102, nombre="Mouse inalámbrico", precio="15.99")

    # Pedidos
    pedido1 = Pedido(id=1001, fecha="2026-01-02", cliente_id=1)
    pedido2 = Pedido(id=1002, fecha="2026-01-03", cliente_id=2)

    # Líneas de pedido
    linea1 = Lineapedido(id=2001, pedido_id=1001, producto_id=101)
    linea2 = Lineapedido(id=2002, pedido_id=1001, producto_id=102)
    linea3 = Lineapedido(id=2003, pedido_id=1002, producto_id=102)

    # --- Mostrar los objetos para verificar atributos ---
    print("Clientes:")
    print(cliente1)
    print(cliente2)
    print("\nProductos:")
    print(producto1)
    print(producto2)
    print("\nPedidos:")
    print(pedido1)
    print(pedido2)
    print("\nLíneas de pedido:")
    print(linea1)
    print(linea2)
    print(linea3)

    # --- Verificación adicional: acceder a atributos individuales ---
    print("\nVerificación manual:")
    print(f"Nombre del cliente 1: {cliente1.nombre}")
    print(f"ID del producto 2: {producto2.id}")
    print(f"Fecha del pedido 1: {pedido1.fecha}")
    print(f"Producto en línea 1: ID {linea1.producto_id}")