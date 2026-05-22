Profile: EEVRISDonorEmbryo
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-embryo
Title: "Doonori embrüo(d)"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud embrüo(d)"
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori annetatud embrüo(d)"
* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
    ExtensionEEVRISDonorReference named secondDonor 0..1
* extension[cryopreservationDate] ^short = "(ee Annetatud embrüo külmutamise kuupäev)"
* extension[secondDonor] ^short = "(ee Embrüo viljastumiseks kasutatud teise doonori viide ehk spermadoonor)"
* productCategory 1..
* productCategory ^binding.description = "LOEND! Kas seda andmevälja on üldse vaja?" //$product-category#cells (exactly)
* productCode 1..
* productCode from $biological-material-type-VS // ^binding.description = "LOEND!" //$fertility-biological-material-type#sperm
* productStatus 1..
* productStatus ^binding.description = "LOEND!" //from BiologicallyDerivedProductStatus (required)
* collection 1..
* collection.source 1..
* collection.source only Reference($vris-donor)
* collection.source ^short = "Doonori viide"
* property.type from $vris-property-type-VS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.coding.code"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "embrüo(de) omadused"
* property contains
    donatedCount 0..1 and
    developmentDay 0..1
* property[donatedCount] ^short = "Annetatud embrüote arv"
* property[donatedCount].type.coding.code = #donated-dose-count //$vris-property-type-VS //^binding.description = "LOENDist fix kood!" //$fertility-bdp-property-type#donated-dose-count
* property[donatedCount].value[x] only integer
* property[developmentDay] ^short = "Embrüo arengupäev"
* property[developmentDay] ^definition = "Embrüo arengupäev — päevade arv pärast viljastamist (nt 3, 5, 6)"
* property[developmentDay].type.coding.code = #arengupäev //$vris-property-type-VS
* property[developmentDay].value[x] only integer
* identifier ^short = "Tõenäoliselt väga oluline identifikaator?"
* parent 0..0
* request 0..0
* biologicalSourceEvent ^short = "Kas seda on vaja?"
* processingFacility ^short = "Kas seda on vaja?"
* division 0..0
* expirationDate 0..0
* storageTempRequirements 0..0
