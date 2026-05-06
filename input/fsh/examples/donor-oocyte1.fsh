Instance: donor-oocyte1
InstanceOf: BiologicallyDerivedProduct
Usage: #example
Description: "Example of donor oocyte"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-oocyte"
* extension.url = "https://fhir.ee/StructureDefinition/ee-vris-cryopreservation-date"
* extension.valueDate = "2025-02-20"
* productCategory.system = "http://hl7.org/fhir/product-category"
* productCategory.code = #cells
* productCode = $biological-material-type#embryo "Embrüo(d)"
* productStatus = #available
* collection.source = Reference(Patient/patientDonor1)
* property[0].type.coding.system = $vris-property-type
* property[=].type.coding.code = #obtained-count
* property[=].type.coding.display = "Annetamisel saadud arv"
* property[=].valueInteger = 2
* property[+].type.coding.system = $vris-property-type
* property[=].type.coding.code = #frozen-count
* property[=].type.coding.display = "Külmutatud arv"
* property[=].valueInteger = 5