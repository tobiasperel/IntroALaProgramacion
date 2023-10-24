import Test.HUnit

main = runTestTT tests

tests = test [
    " relacionesValidas: una sola correcta" ~: (relacionesValidas [relacion1_2]) ~?= True,
    " relacionesValidas: una sola incorrecta" ~: (relacionesValidas [relacion1_1]) ~?= False,
    " personas: una sola relacion, 2 personas" ~: (sonIguales (personas [relacion1_2])  [usuario1, usuario2]) ~?= True,
    " personas: dos relaciones, 3 personas" ~: (sonIguales (personas [relacion1_2, relacion1_3]) [usuario1, usuario2, usuario3]) ~?= True,
    " amigosDe: una sola relacion, 1 solo amigo" ~: (amigosDe usuario1 [relacion1_2] ) ~?= [usuario2],
    " personaConMasAmigos: 2 relaciones, 1 solo max" ~: (personaConMasAmigos [relacion1_2, relacion1_3]) ~?= usuario1
 ]
