Instance: donor-embryo1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "Example of donor embryo"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-embryo"
* extension[0].url = "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
* extension[=].valueDate = "2025-02-20"
* extension[+].url = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-reference"
* extension[=].valueReference = Reference(Patient/patientDonorMale)
//* productCategory.system = "http://hl7.org/fhir/product-category"
//* productCategory.code = #cells
* productCode = $biological-material-type#embryo "Embrüo(d)"
* productStatus = #available
* collection.source = Reference(Patient/patientDonorFemale)
* property[0].type.coding.system = $vris-property-type
* property[=].type.coding.code = #donated-count
* property[=].type.coding.display = "Annetatud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vris-property-type
* property[=].type.coding.code = #development-day
* property[=].type.coding.display = "Arengupäev"
* property[=].valueInteger = 5
