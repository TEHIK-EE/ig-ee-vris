Profile: EEVRISDonorCell
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-cell
Title: "Doonori bioloogiline materjal"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud bioloogiline materjal (sperma, munarakud, embrüo)"

* ^status = #active
* . ^short = "Doonori annetatud bioloogiline materjal"

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1
* extension[cryopreservationDate] ^short = "Külmutamise kuupäev"

* productCategory 0..0
* productCode 1..
* productCode from $biological-material-type-VS
* productStatus 1..
* collection 1..
* collection.source 1..
* collection.source only Reference($mpi-patient)
* collection.source ^short = "Reference of the donor. (ee Doonori viide)."
* collection.collector 0..0
//* property.type.coding from $vris-property-type-VS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "$this" //"type.coding.code.value"
* property ^slicing.rules = #closed
* property ^slicing.ordered = false
* property ^slicing.description = "Characteristics of biologic material. (ee Bioloogilise materjali omadused)"
* property contains
    donatedCount 0..1 and
    secondCharacteristic 0..1 
* property[donatedCount] ^short = "Annetatud dooside/ühikute arv"
* property[donatedCount].type.coding from $vris-property-type1-VS
* property[donatedCount].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[donatedCount].value[x] only integer
//* property[frozenCount] ^short = "Külmutatud dooside/ühikute arv"
//* property[frozenCount].type.coding.code = #frozen-dose-count
//* property[frozenCount].value[x] only integer
* property[secondCharacteristic] ^short = "Embrüo arengupäev või külmutatud rakkude arv."
* property[secondCharacteristic] ^definition = "Embrüo arengupäev — päevade arv pärast viljastamist (nt 3, 5, 6). NB! Ainult embrüo puhul. Sperma ja munarakkude puhul külmutatud dooside/rakkude arv."
* property[secondCharacteristic].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[secondCharacteristic].type.coding from $vris-property-type2-VS
* property[secondCharacteristic].value[x] only integer
* parent 0..0
* request 0..0
* division 0..0
* expirationDate 0..0
* storageTempRequirements 0..0