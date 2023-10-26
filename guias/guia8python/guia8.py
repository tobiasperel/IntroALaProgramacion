from queue import Queue
from array import *



def crearListN(n:int) -> list:
    l: list = []
    for i in range(0, n, 1):
        l.append(0)
    return l
# print(crearListN(5))

class Persona:
    def __init__(self, nombre: str, edad:int):
        self.nombre = nombre
        self.edad = edad
    def presentarse(self):
        print(f"Hola, mi nombre es {self.nombre} y mi edad es {self.edad}")

persona1 = Persona("Juan", 20)
# persona1.presentarse()
# print(persona1.nombre)
# persona1.edad = 30 
# print(persona1.edad)

class Animal:
    def __init__(self, nombre: str, edad:int):
        self.nombre = nombre
        self.edad = edad
    def emitirSonido(self):
        pass

class Perro(Animal):
    def __init__(self, nombre: str, edad:int, raza:str):
        super().__init__(nombre, edad)
        self.raza = raza
    def emitirSonido(self):
        print("guau")

class Gato(Animal):
    def __init__(self, nombre: str, edad:int, raza:str):
        super().__init__(nombre, edad)
        self.raza = raza
    def emitirSonido(self):
        print("miau")

# Funcion que u t i l i z a polimorfismo
def hacer_emitir_sonido (animal) :
    return animal.emitirSonido()

perro1 = Perro("Firulais", 5, "salchicha")
# perro1.emitirSonido()

#ej2
def clonarSinComentarios(nombre_archivo: str) -> None:
    archivo = open(nombre_archivo, "r")
    archivo2 = open("sinComentarios.txt", "w")
    for linea in archivo.readlines():
        if linea[0] != "#":
            archivo2.write(linea)
    archivo.close()
    archivo2.close()
#clonarSinComentarios("archivo.txt")

#ej10 
def buscarElMaximo(p: Queue) -> int:
    maximo = p.get()
    while not p.empty():
        elem = p.get()
        if elem > maximo:
            maximo = elem
    return maximo
buscarElMaximo(Queue([1,2,3,4,5,6,7,8,9,10]))