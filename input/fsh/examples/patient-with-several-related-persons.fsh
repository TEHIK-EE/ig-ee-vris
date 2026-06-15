/*Instance: example-donor-of-cell-patient
InstanceOf: EEVRISDonorOfCell
Usage: #example
Title: "Donor of Cell Patient example with three RelatedPerson links"
Description: "Example Patient with links to sperm donor, oocyte donor and partner."

* id = "example-donor-of-cell-patient"
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "37302102711"
* name[official].family = "Tamm"
* name[official].given[0] = "Mari"

* gender = #female

// Link 1: spermadoonor
* link[0].other = Reference(RelatedPerson/example-relatedperson-sperm-donor)
* link[0].type = #refer

// Link 2: munarakudoonor
* link[1].other = Reference(RelatedPerson/example-relatedperson-oocyte-donor)
* link[1].type = #refer

// Link 3: partner
* link[2].other = Reference(RelatedPerson/example-relatedperson-partner)
* link[2].type = #refer
*/