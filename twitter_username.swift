import Foundation

let twitter_username = CommandLine.arguments[1]
let pattern = #"^@[a-zA-Z0-9_-]{5,15}$"#
let regex = try NSRegularExpression(pattern:pattern,options:[])
let range = NSRange(location: 0, length: twitter_username.utf16.count)
let validation = regex.firstMatch(in: twitter_username, options: [], range: range) != nil
let response = validation ? "Usuario válido" : "Usuario no válido"
print(response)