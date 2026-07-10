Instance: patientDonorunknown1
/*InstanceOf: Patient
Usage: #example
Description: "Example of unknown patient"
* meta.profile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-unknown"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor"
* language = #et
* identifier[0].system = "https://fhir.ee/sid/pid/est/mr"
* identifier[=].value = "Doonor-12345"
//* identifier[+].system = "https://fhir.ee/sid/pid/est/ppn"
//* identifier[=].value = "K0307337"
//* identifier[=].period.end = "2023-12-28"
//* identifier[=].assigner.display = "Estonian Police and Board Agency"
* active = true
* name.use = #nickname
* name.text = "Doonor12345"
//* name.given = "12345"
* gender = $sugu#female

Instance: patientDonorAnonymous1*/
InstanceOf: EEVRISDonorAnonymous
Usage: #example
Description: "Example of anonymous foreign sperm donor"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"
* language = #et
* identifier[0].system = "https://fhir.ee/sid/pid/est/mr"
* identifier[=].value = "Doonor-12345"
* active = true
* name[nickname].use = #nickname
* name[nickname].text = "Doonor12345"
* gender = #mees
* birthDate = "1990-01-01"
* birthDate.extension[age].valueAge.value = 35
* birthDate.extension[age].valueAge.unit = "a"
* birthDate.extension[age].valueAge.system = $ucum
* birthDate.extension[age].valueAge.code = #a
* address.country = "DK"
* address.text = "Denmark"
* address.use = #home
* extension[role].valueCodeableConcept.coding.system = $sct
* extension[role].valueCodeableConcept.coding.code = #TODO
* extension[role].valueCodeableConcept.coding.display = "Anonymous donor"
* extension[nationality].extension[code].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[nationality].extension[code].valueCodeableConcept.coding.code = #DK
* extension[nationality].extension[code].valueCodeableConcept.coding.display = "Denmark"
* extension[additionalIdentifier].valueIdentifier.system = $identifier-domain
* extension[additionalIdentifier].valueIdentifier.value = "DKSB-2024-9876"