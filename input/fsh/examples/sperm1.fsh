Instance: sperm1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "TEST Example of donor cell (sperm)"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
* extension.url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDate = "2025-02-20"
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