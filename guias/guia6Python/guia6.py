
def suma2 (x: int, y: int) -> int:
    res: int = x + y
    return res
# print(suma2(2, 3))

def imprimir_hol_mundo() -> None:
    print("Hola mundo")
# imprimir_hol_mundo()

def raizDe(n:int) -> float: # devuelve un float con 4 decimales
    raiz:float = n ** 0.5
    return round (raiz, 4)
# print(raizDe(145))

def factorial(n: int) -> int:
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)
# print(factorial(5))

def fahrenheitACelsius(f: float) -> float:
    return (f - 32) * 5/9
# print(fahrenheitACelsius(100))

def cantidadDeLetras(s: str) -> int:
    return len(s)
# print(cantidadDeLetras("Hola mundo"))

def imprimirNumeros(n:int) -> None:
    i:int = 1
    while i<=n:
        print(i)
        i+=1
# imprimirNumeros(10)

def imprimirNumerosPares(n:int) -> None:
    i:int = 10
    while i<=n:
        print(i)
        i+=2
# imprimirNumerosPares(40)