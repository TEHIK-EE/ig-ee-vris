Alias: $fertility-biological-material-type = https://fhir.ee/CodeSystem/vris-biological-material-type

Instance: donor-sperm1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-vris-donor-sperm"
* extension.url = "https://fhir.ee/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDate = "2025-03-15"
* productCategory.system = $product-category
* productCategory.code = #cells
* productCode = $fertility-biological-material-type#sperm "Sperma"
* productStatus = #available
* collection.source = Reference(Patient/patientExampleMPI) 
* property[0].type.coding.system = "https://fhir.ee/CodeSystem/vris-property-type"
* property[=].type.coding.code = #donated-dose-count
* property[=].type.coding.display = "Annetatud dooside arv"
* property[=].valueInteger = 8
* property[+].type.coding.system = "https://fhir.ee/CodeSystem/vris-property-type"
* property[=].type.coding.code = #frozen-dose-count
* property[=].type.coding.display = "Külmutatud dooside arv"
* property[=].valueInteger = 6