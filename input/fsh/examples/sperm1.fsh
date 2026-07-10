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
* extension[cryopreservationReason].valueCodeableConcept.coding.system = $sct
* extension[cryopreservationReason].valueCodeableConcept.coding.code = #TODO
* extension[cryopreservationReason].valueCodeableConcept.coding.display = "For donation"
* extension[recipient].valueReference = Reference(Patient/patientFemale)
* productCode = $biological-material-type#sperm "Seemnerakud"
* productStatus = #available
* collection.source = Reference(Patient/patientDonorMale)
* property[donatedCount].valueInteger = 4
* property[frozenCount].valueInteger = 4
* property[cellOriginRole].valueCodeableConcept.coding.system = $sct
* property[cellOriginRole].valueCodeableConcept.coding.code = #TODO
* property[cellOriginRole].valueCodeableConcept.coding.display = "Non-partner donor"

* property[collectionMethod].valueCodeableConcept.coding.system = $sct
* property[collectionMethod].valueCodeableConcept.coding.code = #TODO
* property[collectionMethod].valueCodeableConcept.coding.display = "Ejaculation"

* property[usageState].valueCodeableConcept.coding.system = $sct
* property[usageState].valueCodeableConcept.coding.code = #TODO
* property[usageState].valueCodeableConcept.coding.display = "Thawed from frozen"

* property[donorStimulationMethod].valueCodeableConcept.coding.system = $sct
* property[donorStimulationMethod].valueCodeableConcept.coding.code = #TODO
* property[donorStimulationMethod].valueCodeableConcept.coding.display = "Follitropin + Chorionic gonadotropin"

//* biologicalSourceEvent.system = $identifier-domain
* biologicalSourceEvent.value = "ABC123"