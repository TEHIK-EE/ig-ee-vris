# patientDonorunknown1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patientDonorunknown1**

## Example Patient: patientDonorunknown1

Language: et

Profile: [Patient: EE VRIS Anonymous Patient](StructureDefinition-ee-vris-donor-anonymous.md)

Doonor12345(nickname) Male, DoB: 1990-01-01 ( https://fhir.ee/sid/pid/est/mr#Doonor-12345)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | Denmark(home) |
| Patient Nationality: | * code: Denmark
 |
| [Cell origin role](StructureDefinition-ee-vris-role.md) | Anonymous donor |
| [Additional identifier](StructureDefinition-ee-vris-additional-identifier.md) | `https://fhir.ee/CodeSystem/identifikaatorite-domeen`/DKSB-2024-9876 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patientDonorunknown1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
  },
  "language" : "et",
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-role",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Anonymous donor"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "DK",
          "display" : "Denmark"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  },
  {
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-additional-identifier",
    "valueIdentifier" : {
      "system" : "https://fhir.ee/CodeSystem/identifikaatorite-domeen",
      "value" : "DKSB-2024-9876"
    }
  }],
  "identifier" : [{
    "system" : "https://fhir.ee/sid/pid/est/mr",
    "value" : "Doonor-12345"
  }],
  "active" : true,
  "name" : [{
    "use" : "nickname",
    "text" : "Doonor12345"
  }],
  "gender" : "male",
  "birthDate" : "1990-01-01",
  "_birthDate" : {
    "extension" : [{
      "url" : "https://fhir.ee/base/StructureDefinition/ee-patient-age",
      "valueAge" : {
        "value" : 35,
        "unit" : "a",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    }]
  },
  "address" : [{
    "use" : "home",
    "text" : "Denmark",
    "country" : "DK"
  }]
}

```
