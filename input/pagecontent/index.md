# {{site.data.fhir.ig.title}}

## Overview
Welcome to the **{{site.data.fhir.ig.title}}** Implementation Guide. This guide defines a set of FHIR profiles, extensions, and operations used to support patient identification and emergency contact management, particularly through the AMKA system.

### Purpose
This guide provides:
- A standardized approach for representing **AMKA** (the Greek unique patient identifier) in FHIR.
- An extension for **emergency contact details**.
- A custom **Patient Profile** incorporating these extensions.
- A FHIR operation (`SearchByAmka`) to search patients by their AMKA.

### Audience
This Implementation Guide is intended for:
- **FHIR Developers** working with patient data in Greece.
- **Healthcare Systems** integrating patient identity and emergency contacts.
- **FHIR Implementers** defining interoperability between systems.

---

## **FHIR Artifacts**
The following key FHIR artifacts are included in this Implementation Guide:

### **Profiles**
| Name | Description |
|------|------------|
| [Patient Profile](StructureDefinition-PatientProfile.html) | A customized Patient resource that includes AMKA and emergency contact information. |

### **Extensions**
| Name | Description |
|------|------------|
| [AMKA Extension](StructureDefinition-AMKAExtention.html) | Represents the AMKA (Greek national patient identifier) as an 11-digit string. |
| [Emergency Contact Extension](StructureDefinition-EmergencyContactExtension.html) | Defines a structure for emergency contact details, including name, relationship, phone, and address. |

### **Operations**
| Name | Description |
|------|------------|
| [Search By AMKA](OperationDefinition-search-by-amka.html) | A custom operation allowing a Patient to be retrieved by AMKA. |

### **ValueSets**
| Name | Description |
|------|------------|
| [Emergency Contact Relationship](ValueSet-emergency-contact-relationship.html) | Defines relationship codes for emergency contacts (e.g., Next of Kin, Parent, Friend). |

---

## **How to Use This Guide**
This guide follows **FHIR R4** and provides:
- Detailed descriptions of each profile and extension.
- Examples of valid FHIR resources.
- API endpoints for querying patient data.

### **Accessing FHIR Artifacts**
All FHIR artifacts are linked in this guide and can be retrieved in **JSON** or **XML** format.

### **Example Patient Resource**
Here is an example of a `Patient` resource conforming to the `PatientProfile`:

```json
{
  "resourceType": "Patient",
  "id": "example",
  "meta": {
    "profile": ["https://hl7.org/fhir/StructureDefinition/PatientProfile"]
  },
  "identifier": [
    {
      "system": "https://hl7.org/fhir/StructureDefinition/AMKAExtention",
      "value": "12345678901"
    }
  ],
  "name": [
    {
      "family": "Doe",
      "given": ["John"]
    }
  ],
  "extension": [
    {
      "url": "https://hl7.org/fhir/StructureDefinition/EmergencyContactExtension",
      "extension": [
        {
          "url": "name",
          "valueHumanName": {
            "family": "Smith",
            "given": ["Jane"]
          }
        },
        {
          "url": "relationship",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/v3/RoleCode",
                "code": "NOK",
                "display": "Next of Kin"
              }
            ]
          }
        },
        {
          "url": "phone",
          "valueContactPoint": {
            "system": "phone",
            "value": "+1-555-555-5555"
          }
        }
      ]
    }
  ]
}
