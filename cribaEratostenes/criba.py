NotPrimeNumerbers = []
primeNumerbers = []
def cribaEratostenes(tope):
    for i in range(2, tope):
        if i not in NotPrimeNumerbers:
            primeNumerbers.append(i)
            for j in range(i*i, tope, i):
                
                NotPrimeNumerbers.append(j)

if __name__ == "__main__":
    cribaEratostenes(int(input("Ingrese el tope: ")))
    print(primeNumerbers)