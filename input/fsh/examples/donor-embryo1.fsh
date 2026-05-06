Instance: donor-embryo1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-vris-donor-embryo"
* extension.url = "https://fhir.ee/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDate = "2025-02-20"
* productCategory.system = "http://hl7.org/fhir/product-category"
* productCategory.code = #cells
* productCode = $biological-material-type#embryo "Embrüo(d)"
* productStatus = #available
* collection.source = Reference(Patient/donor-003) "Doonor"
* property[0].type.coding.system = $vris-property-type
* property[=].type.coding.code = #donated-count
* property[=].type.coding.display = "Annetatud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vris-property-type
* property[=].type.coding.code = #development-day
* property[=].type.coding.display = "Arengupäev"
* property[=].valueInteger = 5