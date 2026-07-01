Instance: oocyte1
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
* collection.source = Reference(Patient/patientDonorFemale)
* property[0].type.coding.system = $vris-property-type
* property[=].type.coding.code = #donated-count
* property[=].type.coding.display = "Annetatud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vris-property-type
* property[=].type.coding.code = #frozen-count
* property[=].type.coding.display = "Külmutatud arv"
* property[=].valueInteger = 5