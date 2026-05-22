Profile: EEVRISDonorCell
Parent: BiologicallyDerivedProduct
Id: ee-vris-donor-cell
Title: "Doonori bioloogiline materjal (sperma või munarakk)"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud bioloogiline materjal (sperma, munarakud)"

* ^status = #active
* . ^short = "Doonori annetatud bioloogiline materjal, sperma või munarakk."

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
    ExtensionEEVRISCellPreservationReason named cryopreservationReason 0..1 and
    ExtensionEEVRISCellCollection named collection 0..1
* extension[cryopreservationDate] ^short = "Külmutamise kuupäev"
* extension[cryopreservationReason] ^short = "Külmutamise põhjus"
* extension[collection] ^short = "Suguraku kogumise liik"
* productCategory 0..0
* productCode 1..
* productCode from $biological-material-type-VS
* productStatus 1..
* collection 1..
* collection.source 1..
* collection.source only Reference(EEVRISDonor)
* collection.source ^short = "Reference of the donor. (ee Doonori viide, kes on annetanud bioloogilise materjali.)"
* collection.collector 0..0
//* property.type.coding from $vris-property-type-VS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.coding" //"type.coding.code.value"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "Characteristics of biologic material. (ee Bioloogilise materjali omadused)"
* property contains
    donatedCount 0..1 and
    frozenCount 0..1 
* property[donatedCount] ^short = "Annetatud dooside/ühikute arv"
* property[donatedCount].type.coding from $vris-property-type1-VS
* property[donatedCount].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[donatedCount].value[x] only integer
//* property[frozenCount] ^short = "Külmutatud dooside/ühikute arv"
//* property[frozenCount].type.coding.code = #frozen-dose-count
//* property[frozenCount].value[x] only integer
* property[frozenCount] ^short = "Külmutatud rakkude arv."
* property[frozenCount] ^definition = "Sperma ja munarakkude puhul külmutatud dooside/rakkude arv."
* property[frozenCount].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[frozenCount].type.coding from $vris-property-type2-VS
* property[frozenCount].value[x] only integer
* parent 0..0
* request 0..0
* division ^short = "KAS seda saaks kasutada osaproovide identifikaatoriks? Kas on vaja sellist jaotust?"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "Kas selle kaudu saaks viidata KÜLMUTAMISELE/vm protseduurile?"