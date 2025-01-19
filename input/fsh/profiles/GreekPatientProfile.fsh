Profile: GreekPatientProfile
Parent: Patient
Id: GreekPatientProfile
Description: "Custom Patient that supports AMKA and Emergency Contact"
* ^url = "https://hl7.org/fhir/StructureDefinition/GreekPatientProfile"
* ^version = "1.0.0"
* ^status = #draft
* extension 1..
* extension contains
    AMKAExtention named aMKAExtention 1..1 and
    EmergencyContactExtension named emergencyContactExtension 0..*
* extension[aMKAExtention] ^isModifier = false
* extension[emergencyContactExtension] ^isModifier = false