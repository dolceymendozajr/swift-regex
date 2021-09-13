# I+D Compiladores 2021-30

Lenguaje: Swift

Temas:

- Validación de matricula
- Validación de usuario de Twitter

Integrantes:

- Leonardo Archila Contreras (Grupo 2)
- Juan Arteaga Rodriguez (Grupo 1)
- Dolcey Mendoza Anaya (Grupo 2)

## Actividades

---

## Estructura del código

Primero importamos la libreria _Foundation_ la cual nos permite acceder a los comandos básicos para la interpretación de las expresiones regulares. Posteriormente leemos el parametro que se envió por medio de la linea de comandos y asignamos el patrón correspondiente al ejercicio. Instanciamos la clase _NSRegularExpression_ que nos permite crear la expresión regular para este lenguaje de programación. Creamos un rango a partir del _string_ que se ha elegido como parametro. Luego, validamos el _string_ en base a la expresión regular y el rango antes descrito. Esta validación nos arrojará un _true_ o _false_, la cual será posteriormente impresa a manera de mensaje para el usuario.

## 12. Validación de matricula

Validar una matrícula de un vehículo con formato XXXNNN, donde X es una letra y N es un dígito. En total hay seis caracteres. Puede aceptar mayúsculas y minúsculas.

### Solución

**Uso:** `swift car_plate.swift placa`. Donde _placa_ es la matricula a evaluar.

**Código:**

```swift
import Foundation

let plate = CommandLine.arguments[1]
let pattern = #"^[A-Za-z]{1,3}[0-9]{1,3}$"#
let regex = try NSRegularExpression(pattern:pattern,options:[])
let range = NSRange(location: 0, length: plate.utf16.count)
let validation = regex.firstMatch(in: plate, options: [], range: range) != nil
let response = validation ? "Placa válida" : "Placa no válida"
print(response)
```

## 14. Validación de usuario de Twitter

Valida un nombre de usuario en twitter, empieza por @ y puede contener letras mayúsculas y minúsculas, números, guiones y guiones bajos. Seguir las reglas de un nombre de usuarios en twitter.

### Solución

**Uso:** `swift twitter_username.swift user`. Donde _user_ es el nombre de usuario a evaluar.

**Consideraciones:** Tuvimos en cuenta la regla de creación de usuarios que no permite crear usuarios con un tamaño mayor que 15 caracteres y menor que 5.

**Código:**

```swift
import Foundation

let twitter_username = CommandLine.arguments[1]
let pattern = #"^@[a-zA-Z0-9_-]{5,15}$"#
let regex = try NSRegularExpression(pattern:pattern,options:[])
let range = NSRange(location: 0, length: twitter_username.utf16.count)
let validation = regex.firstMatch(in: twitter_username, options: [], range: range) != nil
let response = validation ? "Usuario válido" : "Usuario no válido"
print(response)
```
