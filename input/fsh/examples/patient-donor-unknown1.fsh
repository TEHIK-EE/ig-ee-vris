Instance: patientDonorunknown1
InstanceOf: Patient
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
* gender = $sugu#female "naine"