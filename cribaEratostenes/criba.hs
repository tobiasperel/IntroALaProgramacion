erastotenes :  Int −> [ Int ]
erastotenes n = erastotenes aux [ x | x <− [ 2.. n ] ] 0
erastotenes aux : [ Int ] −> Int −> [ Int ]
erastotenes aux lista n
    n == length lista −1 = lista
    otherwise = erastotenes aux listafiltrada (n+1)
    where lista_filtrada = [ x | x <−li s t a , ( x ‘mod‘ l i s t a ! ! n)/=0 | |
    x==lista!! n ]