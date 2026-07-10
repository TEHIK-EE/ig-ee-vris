/*Instance: donor-embryo1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "Example of donor embryo"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"
* extension[0].url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
* extension[=].valueDateTime = "2025-02-20"
//* extension[+].url = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-reference"
//* extension[=].valueReference = Reference(Patient/patientDonorMale)
//* productCategory.system = "http://hl7.org/fhir/product-category"
//* productCategory.code = #cells
* productCode = $biological-material-type#embryo "Embrüo(d)"
* productStatus = #available
* collection.source = Reference(Patient/patientFemale)
* property[0].type.coding.system = $sct
* property[=].type.coding.code = #donated-count
* property[=].type.coding.display = "Annetatud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vsct
* property[=].type.coding.code = #development-day
* property[=].type.coding.display = "Arengupäev"
* property[=].valueInteger = 5
* parent[0] = Reference(sperm1)
* parent[+] = Reference(oocyte1)*/

Instance: donor-embryo1
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Example of embryo"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"

//* identifier[0].system = "https://fhir.ee/sid/vris/embryo"
//* identifier[=].value = "embryo-2025-02-20-001"

* extension[cryopreservationDate].valueDateTime = "2025-02-20"
* extension[cryopreservationReason].valueCodeableConcept.coding.system = $sct
* extension[cryopreservationReason].valueCodeableConcept.coding.code = #TODO
* extension[cryopreservationReason].valueCodeableConcept.coding.display = "Preservation for later use"
* extension[recipient].valueReference = Reference(Patient/patientFemale)
* extension[thawning].extension[thawingDate].valueDate = "2025-08-10"
* extension[thawning].extension[thawingCount].valueInteger = 1

* extension[reCryo].extension[reCryo].valueBoolean = false
* extension[reCryo].extension[reCryoCount].valueInteger = 0
* extension[reCryo].extension[reCryoDate].valueDateTime = "2025-08-10"
//* productCategory.coding.system = "http://hl7.org/fhir/product-category"
* productCategory = #cells
* productCode = $biological-material-type#embryo "Embrüo"
* productStatus = #available
* collection.source = Reference(Patient/patientFemale)
* property[developmentDay].valueInteger = 5
* parent[0] = Reference(sperm1)
* parent[+] = Reference(oocyte1)
* biologicalSourceEvent.system = "https://fhir.ee/sid/vris/procedure"
* biologicalSourceEvent.value = "fertilization-2025-02-15-001"
* processingFacility[0] = Reference(Organization/novaVita)