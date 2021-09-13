import Foundation

let plate = CommandLine.arguments[1]
let pattern = #"^[A-Za-z]{1,3}[0-9]{1,3}$"#
let regex = try NSRegularExpression(pattern:pattern,options:[])
let range = NSRange(location: 0, length: plate.utf16.count)
let validation = regex.firstMatch(in: plate, options: [], range: range) != nil
let response = validation ? "Placa válida" : "Placa no válida"
print(response)