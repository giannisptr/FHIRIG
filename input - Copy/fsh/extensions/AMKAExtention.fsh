Extension: AMKAExtention
Id: AMKAExtention
Title: "AMKA - Unique Patient Identifier"
Description: "An extension to specify a unique patient identifier (AMKA), which is an 11-digit string."
Context: Patient
* ^version = "1.0.0"
* ^status = #draft
* value[x] 1..
* value[x] only string
* value[x] obeys amka-1