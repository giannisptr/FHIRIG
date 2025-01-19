Instance: search-by-amka
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://hl7.org/fhir/OperationDefinition/SearchByAmka"
* version = "1.0.0"
* name = "SearchByAmka"
* title = "Search By AMKA"
* status = #draft
* kind = #operation
* description = "Search for a PatientProfile by AMKA extension value. Returns a single Patient resource if found."
* code = #search-by-amka
* comment = "This operation allows searching for a Patient resource conforming to the PatientProfile by its AMKA extension value."
* resource = #Patient
* system = false
* type = true
* instance = false
* outputProfile = "https://hl7.org/fhir/StructureDefinition/PatientProfile"
* parameter.name = #amka
* parameter.use = #in
* parameter.min = 0
* parameter.max = "1"
* parameter.documentation = "The AMKA value to search for. Must be an 11-digit numeric string."
* parameter.type = #string