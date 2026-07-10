Instance: patientDonorMale
InstanceOf: EEVRISDonor
Usage: #example
Description: "Example of known Estonian male sperm donor"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor"
* language = #et
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38301105216"
* identifier[=].type = #DR
* identifier[+].system = "https://fhir.ee/sid/pid/est/ppn"
* identifier[=].value = "K0307337"
* identifier[=].period.end = "2023-12-28"
* identifier[=].assigner.display = "Estonian Police and Board Agency"
* active = true
* name[official].use = #official
* name[official].family = "Mister"
* name[official].given = "Ygrek"
* gender = #male
* birthDate = "1983-01-11"
* birthDate.extension[age].valueAge.value = 42
* birthDate.extension[age].valueAge.unit = "a"
* birthDate.extension[age].valueAge.system = "http://unitsofmeasure.org"
* birthDate.extension[age].valueAge.code = #a
* address.use = #home
* address.country = "EE"
* extension[role].valueCodeableConcept.coding.system = $sct
* extension[role].valueCodeableConcept.coding.code = #TODO
* extension[role].valueCodeableConcept.coding.display = "Non-partner donor"
* extension[birthPlace].valueAddress.city = "Tartu"
* extension[birthPlace].valueAddress.country = "EE"
* extension[nationality].extension[code].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[nationality].extension[code].valueCodeableConcept.coding.code = #EE
* extension[nationality].extension[code].valueCodeableConcept.coding.display = "Estonia"
