Instance: patientChild1
InstanceOf: EEVRISPatientChild
Usage: #example
Description: "Example of child born from VRIS fertility treatment"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-patient-child"
* language = #et

* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "60506120123"

* active = true

* name[official].use = #official
* name[official].family = "Beebi"
* name[official].given = "Laps"

* gender = #female

* birthDate = "2026-05-12"

* address[0].use = #home
* address[=].country = "EE"
* address[=].city = "Tallinn"
* address[=].text = "Tallinn, Eesti"

* extension[birthPlace].valueAddress.city = "Tallinn"
* extension[birthPlace].valueAddress.country = "EE"

* link[0].other = Reference(Patient/patientFemale)
* link[=].type = #seealso