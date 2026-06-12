Profile: EEVRISOocyte
Parent: BiologicallyDerivedProduct
Id: ee-vris-oocyte
Title: "BiologicallyDerivedProduct: EE VRIS Oocyte"
Description: "Profile for oocyte. (ee Bioloogiline materjal (munarakk/munarakud)"

* ^status = #active
* . ^short = "Bioloogiline materjal, munarakk."

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
    ExtensionEEVRISCellPreservationReason named cryopreservationReason 0..1 and
    ExtensionEEVRISCellOriginRole named cellOrigin 0..1 and
    $intended-recipient named recipient 0..1 and
    ExtensionEEVRISOocyteOrigin named oocyteOrigin 0..1 and
    ExtensionEEVRISOocyteType named oocyteType 0..1
* extension[cryopreservationDate] ^short = "Külmutamise kuupäev"
* extension[cryopreservationReason] ^short = "Külmutamise põhjus"
* extension[cellOrigin] ^short = "Suguraku päritolu roll"
* extension[recipient] ^short = "Kui on vaja retsipiendi seost, siis see tuleb täita patsiendi referentsiga."
* extension[oocyteOrigin] ^short = "Munaraku päritolu"
* extension[oocyteType] ^short = "Munaraku tüüp"
* productCategory 0..0
* productCode 1..
* productCode from $biological-material-type-VS
* productCode ^short = "Munarakk. FIX KOOD! (NB! Embryol on oma profiil EEVRISEmbryo). Vaja loendit!"
* productStatus 1..
* collection 1..
* collection.source 1..
* collection.source only Reference(EEVRISPatient)
* collection.source ^short = "Reference of the donor. (ee Doonori viide, kes on annetanud bioloogilise materjali. Võib olla anonüümne aga patient.link kaudu ka MPIst.)"
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
* property[donatedCount] ^short = "Annetatud ühikute arv"
* property[donatedCount].type.coding from $vris-property-type1-VS
* property[donatedCount].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[donatedCount].value[x] only integer
//* property[frozenCount] ^short = "Külmutatud dooside/ühikute arv"
//* property[frozenCount].type.coding.code = #frozen-dose-count
//* property[frozenCount].value[x] only integer
* property[frozenCount] ^short = "Külmutatud rakkude arv."
* property[frozenCount] ^definition = "Mnarakkude puhul külmutatud rakkude arv."
* property[frozenCount].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[frozenCount].type.coding from $vris-property-type2-VS
* property[frozenCount].value[x] only integer
* parent 0..0
* request 0..0
* division ^short = "KAS seda saaks kasutada osaproovide identifikaatoriks? Kas on vaja sellist jaotust?"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "Kas selle kaudu saaks viidata KÜLMUTAMISELE/vm protseduurile?"