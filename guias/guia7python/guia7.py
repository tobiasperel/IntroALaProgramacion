from array import *
# a: array = array('i', [1, 2, 3, 4, 5])
# print(a)

# encolar: ingresa un elemento a la pila
# ▶ append
# ▶ desencolar: saca el primer elemento insertado
# ▶ pop(0)
# ▶ vacia: retorna verdadero si est´a vac´ıa
# ▶ len(a)==0

def pertenece(a: array, x: int) -> bool:
    i: int = 0
    while i < len(a):
        if a[i] == x:
            return True
        i += 1
    return False

def dividirAtodos(a: array, x: int) -> array:
    i: int = 0
    while i < len(a):
        a[i] = a[i] / x
        i += 1
    return a

def sumarTodos(a:array) -> int: 
    total : float = 0
    for i in range(len(a)):
        total = total + a[i] 
    return total    
print (sumarTodos(array('f', [1.0, 2.0, 3.0, 4.0, 5.0])))