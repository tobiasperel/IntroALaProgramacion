from queue import LifoQueue as Pila
p = Pila ()
p . put (1) # apilar
elemento = p . get () # desapilar
p . empty () # vacia ?'''

def ultima_aparicion(s:list,e:int)-> int:
    ultimaVez : int  = -1
    for i in s:
        if s[i] == e:
            ultimaVez = i
    return ultimaVez
ultima_aparicion([1,3,4,5,6,3,4,5,2],3) 

def elementos_exclusivos(s:list,t:list) -> list:
    listaAdevolver:list = s
    for elemento in t:
        #print(t)
        #print(elemento)
        if elemento in listaAdevolver:
            #print(elemento)
            #print(listaAdevolver)
            for j in range(len(listaAdevolver)):
                if listaAdevolver[j]== elemento:
                    listaAdevolver.pop(j)
                    break
        else:
            listaAdevolver.append(elemento)
    return listaAdevolver
elementos_exclusivos([1,2,3,8,54,49],[9,2,4])

def contar_traducciones_iguales(ing:dict, ale: dict) -> int:
    cantidad:int = 0
    dictAdevolver = ing.copy()
    aleKeys = list(ale.keys())
    aleClave= list(ale.values())
    for i in range(len(aleKeys)):
        if aleKeys[i] in dictAdevolver.keys():
            if dictAdevolver[aleKeys[i]] == aleClave[i]:
                cantidad +=1
    return cantidad


contar_traducciones_iguales({"Mano": "Hand", "Pie": "Fuss", "Dedo": "Finger", "Cara": "Gesicht"},{"Pie": "Foot", "Dedo": "Finger", "Mano": "Hand"})

def convertir_a_diccionario(lista:list) ->dict :
    diccADevolver : dict = {}
    for i in range(len(lista)):
        if lista[i] in diccADevolver:
            diccADevolver[lista[i]] +=1
        else:
            diccADevolver[lista[i]] =1
    return diccADevolver
convertir_a_diccionario([-1, 0, 4, 100, 100, -1, -1] )
        
