# patientChild1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patientChild1**

## Example Patient: patientChild1

Language: et

Profile: [Patient: EE VRIS Child](StructureDefinition-ee-vris-patient-child.md)

Laps Beebi (official) Female, DoB: 2026-05-12 ( https://fhir.ee/sid/pid/est/ni#60506120123)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | Tallinn, Eesti(home) |
| Links: | * Also see: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)
 |
| [Patient Birth Place](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-patient-birthPlace.html) | Tallinn EE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patientChild1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-patient-child"]
  },
  "language" : "et",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "city" : "Tallinn",
      "country" : "EE"
    }
  }],
  "identifier" : [{
    "system" : "https://fhir.ee/sid/pid/est/ni",
    "value" : "60506120123"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Beebi",
    "given" : ["Laps"]
  }],
  "gender" : "female",
  "birthDate" : "2026-05-12",
  "address" : [{
    "use" : "home",
    "text" : "Tallinn, Eesti",
    "city" : "Tallinn",
    "country" : "EE"
  }],
  "link" : [{
    "other" : {
      "reference" : "Patient/patientFemale"
    },
    "type" : "seealso"
  }]
}

```
