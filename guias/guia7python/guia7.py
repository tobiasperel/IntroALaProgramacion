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
#print (sumarTodos(array('f', [1.0, 2.0, 3.0, 4.0, 5.0])))

def remplazarVocales(a: array) -> array:
    i: int = 0
    while i < len(a):
        if a[i] == 'a' or a[i] == 'e' or a[i] == 'i' or a[i] == 'o' or a[i] == 'u':
            a[i] = '-'
        i += 1
    return a
#print(remplazarVocales(array('u', ['a', 'e', 'i', 'o', 'u'])))

def darVueltaString(palabra: str) -> str:
    i: int = len(palabra) - 1
    String2: str = ''
    while i >= 0:
        String2 += palabra[i]
        i -= 1
    return String2
#print(darVueltaString('hola'))

def eliminarRepetidos(s:str) -> str :
    resultado = ''
    for i in range(len(s)):
        letra_repetida = False
        for j in range(i+1, len(s)):
            if s[i] == s[j] :
                letra_repetida = True
                break
        if letra_repetida == False:
            resultado += s[i]
    return resultado
#print(eliminarRepetidos('hoolaaaahhh'))

def eliminarRepetidos2(s:str) -> str :
    resultado = ''
    for i in range(len(s)):
        if pertenece(resultado, s[i]) == False:
            resultado += s[i]
    return resultado
#print(eliminarRepetidos2('hoolaaaahhh'))

def esMatriz (a:array) -> bool:
    for i in range(len(a)):
        if len(a[i]) != len(a):
            return False
    return True
#print(esMatriz([[1,2,3],[4,5,6],[7,8,9]]))

def filasOrdenadas(a:array) -> bool:
    for i in range(len(a)):
       for j in range(len(a[i])-1):
           if a[i][j] >a[i][j+1]:
               return False
    return True
print(filasOrdenadas([[1,2,3],[4,5,6],[1,1,9]]))

