Extension: ExtensionEEVRISPackage
Id: ee-vris-package
Title: "Package"
Description: "Extension for packaging separate embryos in one package intended to be transferred at the same time. (ee Pakend erinevate embrüote üheaegseks siirdamiseks.)"
Context: BiologicallyDerivedProduct
* ^context.type = #element
* ^status = #draft

* value[x] only Reference(BiologicallyDerivedProduct)
* value[x] ^short = "(ee Pakendi identifikaator)"