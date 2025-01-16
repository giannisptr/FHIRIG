Extension: EmergencyContactExtension
Id: EmergencyContactExtension
Description: "Emergency contact details for the patient"
Context: Patient
* ^url = "https://hl7.org/fhir/StructureDefinition/EmergencyContactExtension"
* ^version = "1.0.0"
* ^status = #draft
* extension contains
    name 1..* and
    relationship 0..* and
    phone 0..* and
    address 0..*
* extension[name].value[x] only HumanName
* extension[relationship].value[x] only CodeableConcept
* extension[phone].value[x] 1..
* extension[phone].value[x] only ContactPoint
* extension[address].value[x] only Address