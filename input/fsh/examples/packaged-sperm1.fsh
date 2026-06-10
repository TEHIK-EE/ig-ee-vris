Instance: packaged-sperm1
InstanceOf: EEVRISPackagedProductDefinition
Description: "Example of packaged sperm containing 3 doses."
Usage: #example
* identifier[0].system = "https://fhir.ee/vris/identifier/packaged-product"
* identifier[0].value = "PKG-2024-SP-001"
* name = "Sperma pakend"
* status = #active
* description = "Pakend sisaldab 3 krüosäilitatud sperma doosi."
* packaging.type.text = "Krüosäilitamise konteiner"
* packaging.containedItem[0].item = Reference(BiologicallyDerivedProduct/donor-cell1)
* packaging.containedItem[0].amount.value = 3
//* packaging.containedItem[0].amount.unit = "doos"
//* packaging.containedItem[0].amount.system = "http://unitsofmeasure.org"
//* packaging.containedItem[0].amount.code = #dose