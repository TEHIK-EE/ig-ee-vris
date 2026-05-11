Instance: donor-sperm1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "Example of donor sperm"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-cell"
* extension.url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDate = "2025-03-15"
//* productCategory.system = $product-category
//* productCategory.code = #cells
* productCode = $biological-material-type#sperm "Sperma"
* productStatus = #available
* collection.source = Reference(Patient/patientDonor1) 
* property[0].type.coding.system = $vris-property-type
* property[=].type.coding.code = #donated-dose-count
* property[=].type.coding.display = "Annetatud dooside arv"
* property[=].valueInteger = 8
* property[+].type.coding.system = $vris-property-type
* property[=].type.coding.code = #frozen-dose-count
* property[=].type.coding.display = "Külmutatud dooside arv"
* property[=].valueInteger = 6