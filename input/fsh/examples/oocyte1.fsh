/*Instance: oocyte1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "TEST Example of donor cell (oocyte)"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"
* extension.url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDateTime = "2025-02-20"
//* productCategory.system = "http://hl7.org/fhir/product-category"
//* productCategory.code = #cells
* productCode = $biological-material-type#oocyte "Oocyte"
* productStatus = #available
* collection.source = Reference(Patient/patientFemale)
* property[0].type.coding.system = $vris-property-type-CS
* property[=].type.coding.code = #donated-count
* property[=].type.coding.display = "Annetatud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vris-property-type-CS
* property[=].type.coding.code = #frozen-count
* property[=].type.coding.display = "Külmutatud arv"
* property[=].valueInteger = 5
*/
Instance: oocyte1
InstanceOf: EEVRISOocyte
Usage: #example
Description: "Example of oocyte"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"

* extension[cryopreservationDate].valueDateTime = "2025-02-20"

* extension[cryopreservationReason].valueCodeableConcept.coding.system = $reasons
* extension[cryopreservationReason].valueCodeableConcept.coding.code = #medical
* extension[cryopreservationReason].valueCodeableConcept.coding.display = "Meditsiiniline põhjus"

* extension[recipient].valueReference = Reference(Patient/patientFemale)

* extension[thawing].extension[thawingDate].valueDate = "2025-06-15"
* extension[thawing].extension[thawingCount].valueInteger = 1

* productCode = $biological-material-type#oocyte "Munarakk"
* productStatus = #available

* collection.source = Reference(Patient/patientFemale)

* property[donatedCount].valueInteger = 8

* property[frozenCount].valueInteger = 5

* property[metaPhase2Count].valueInteger = 6

* property[cellOriginRole].valueCodeableConcept.coding.system = $reasons
* property[cellOriginRole].valueCodeableConcept.coding.code = #endale
* property[cellOriginRole].valueCodeableConcept.coding.display = "Säilitaja"

* property[collectionMethod].valueCodeableConcept.coding.system = $sct
* property[collectionMethod].valueCodeableConcept.coding.code = #TODO
* property[collectionMethod].valueCodeableConcept.coding.display = "Follicular puncture"

* property[oocyteOrigin].valueCodeableConcept.coding.system = $sct
* property[oocyteOrigin].valueCodeableConcept.coding.code = #TODO
* property[oocyteOrigin].valueCodeableConcept.coding.display = "Patient's own oocyte"

* property[oocyteType].valueCodeableConcept.coding.system = $sct
* property[oocyteType].valueCodeableConcept.coding.code = #TODO
* property[oocyteType].valueCodeableConcept.coding.display = "Fresh, retrieved on fertilization day"

* property[intendedUse].valueCodeableConcept.coding.system = $sct
* property[intendedUse].valueCodeableConcept.coding.code = #TODO
* property[intendedUse].valueCodeableConcept.coding.display = "For self use"

* property[preservationReason].valueCodeableConcept.coding.system = $reasons
* property[preservationReason].valueCodeableConcept.coding.code = #nononco
* property[preservationReason].valueCodeableConcept.coding.display = "Mitte-onkoloogiline terviseprobleem"