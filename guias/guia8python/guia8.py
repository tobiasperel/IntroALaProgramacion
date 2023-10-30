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

from queue import LifoQueue as Pila
p = Pila ()
p . put (1) # apilar
elemento = p . get () # desapilar
p . empty () # vacia ?'''

import random

pilaMia: Pila = Pila()
pilaMia.put(1)
pilaMia.put(6)
pilaMia.put(4)
pilaMia.put(1)
pilaMia.put(3)
pilaMia.put(1)
pilaMia.put(2)
pilaMia.put(2)
pilaMia.put(1)
pilaMia.put(2)

def generarNrosAlAzar(n : int, desde : int, hasta : int) -> Pila:
    p = Pila()
    for i in range(n):
        p.put(random.randint(desde,hasta))
    return p
#print(generarNrosAlAzar(8,100,120))

def cantidadElementosCola(p : Pila) -> int:
    cantidadElementos:int = 0
    while not p.empty():
        elemento = p.get()
        cantidadElementos+=1
        if p.empty():
            break
    return cantidadElementos
print(cantidadElementosCola(pilaMia))

'''
def buscarElMaximo(p : Pila) -> int:
    elemento:int = p.get()
    maximo:int= elemento
    while not p.empty():
        print(elemento)
        elemento = p.get()
        if maximo < elemento:
            maximo = elemento
    return maximo
print(buscarElMaximo(pilaMia))
'''



from queue import Queue as Cola
c = Cola ()
c . put (1) # encolar
elemento = c . get () # desencolar ()
c . empty () # vacia ?

def cantidadElementosCola(c : Cola) -> int:
    cantidadElementos:int = 0
    while not c.empty():
        elemento = c.get()
        cantidadElementos+=1
        if c.empty():
            break
    return cantidadElementos

colaMia: Cola = Cola()
colaMia.put(1)
colaMia.put(6)
colaMia.put(4)
colaMia.put(1)
colaMia.put(3)
colaMia.put(1)
colaMia.put(2)
colaMia.put(2)
colaMia.put(2)
print(cantidadElementosCola(colaMia))

'''
def buscarElMaximo(c : Cola) -> int:
    maximo:int = c.get()
    while not c.empty():
        elementoTemporal: int = c.get()
        if maximo < elementoTemporal:
            maximo = elementoTemporal

buscarElMaximo(colaMia)

def agruparPorLongitud(nombreArchivo):
    archivo = open(nombreArchivo).read()
    print(archivo)
    palabras = archivo.replace("\n"," ").split(" ")
    print(palabras)
    miDicc={}
    for palabra in palabras:
        if len(palabra) in miDicc:
            miDicc[len(palabra)] +=1
        else:
             miDicc[len(palabra)] =1
    print(miDicc)

#agruparPorLongitud("archivo.txt")

def laPalabraMasFrecuente(nombreArchivo) :
    archivo = open(nombreArchivo).read()
    palabras= archivo.replace("\n"," ").split(" ")
    
    miDicc = {}
    palabraMasComun = " "
    cantidadMasComun= 0
    for palabra in palabras:
        if palabra in miDicc:
            miDicc[palabra]+=1
            if cantidadMasComun < miDicc[palabra]:
                cantidadMasComun = miDicc[palabra]
                palabraMasComun = palabra
        else:
            miDicc[palabra]=1
    return(palabraMasComun)

#print(laPalabraMasFrecuente("archivo.txt"))

'''
