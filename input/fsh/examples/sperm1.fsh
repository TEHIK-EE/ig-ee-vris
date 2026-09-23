/*Instance: sperm1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "TEST Example of donor cell (sperm)"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
* extension.url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDateTime = "2025-02-20"
* productCode = $biological-material-type#sperm "Sperma"
* productStatus = #available
* collection.source = Reference(Patient/patientDonorMale)
* property[0].type.coding.system = $vris-property-type
* property[=].type.coding.code = #donated-count
* property[=].type.coding.display = "Annetatud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vris-property-type
* property[=].type.coding.code = #frozen-count
* property[=].type.coding.display = "Külmutatud dooside arv"
* property[=].valueInteger = 5
*/
Instance: sperm1
InstanceOf: EEVRISSperm
Usage: #example
Description: "Example of donor spermn"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
* extension[cryopreservationDate].valueDateTime = "2025-02-20"
//* extension[preservationReason].valueCodeableConcept.coding.system = $sct
//* extension[preservationReason].valueCodeableConcept.coding.code = #TODO
//* extension[preservationReason].valueCodeableConcept.coding.display = "For donation"
* extension[recipient].valueReference = Reference(Patient/patientFemale)
* productCode = $biological-material-type#sperm "Seemnerakud"
* productStatus = #available
* collection.source = Reference(Patient/patientDonorMale)
* property[donatedCount].valueInteger = 4
//* property[frozenCount].valueInteger = 4
* property[Role].valueCodeableConcept.coding.system = $sct
* property[Role].valueCodeableConcept.coding.code = #TODO
* property[Role].valueCodeableConcept.coding.display = "Non-partner donor"

* property[collectionMethod].valueCodeableConcept.coding.system = $sct
* property[collectionMethod].valueCodeableConcept.coding.code = #TODO
* property[collectionMethod].valueCodeableConcept.coding.display = "Ejaculation"

* property[usageState].valueCodeableConcept.coding.system = $sct
* property[usageState].valueCodeableConcept.coding.code = #TODO
* property[usageState].valueCodeableConcept.coding.display = "Thawed from frozen"

* property[donorStimulationMethod].valueCodeableConcept.coding.system = $sct
* property[donorStimulationMethod].valueCodeableConcept.coding.code = #TODO
* property[donorStimulationMethod].valueCodeableConcept.coding.display = "Follitropin + Chorionic gonadotropin"

* property[preservationReason].valueCodeableConcept.coding.system = $sct
* property[preservationReason].valueCodeableConcept.coding.code = #3428006
* property[preservationReason].valueCodeableConcept.coding.display = "|Oncologic (qualifier value)|"

* property[preservationMethod].valueCodeableConcept.coding.system = $sct
* property[preservationMethod].valueCodeableConcept.coding.code = #TODO
* property[preservationMethod].valueCodeableConcept.coding.display = "Kirurgiliselt saadud seemnerakkude säilitamine"

//* biologicalSourceEvent.system = $identifier-domain
* biologicalSourceEvent.value = "ABC123"