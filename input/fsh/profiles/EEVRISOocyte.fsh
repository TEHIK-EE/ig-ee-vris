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
//    ExtensionEEVRISCellOriginRole named cellOrigin 0..1 and
    ExtensionEEVRISCollectionMethod named collection 0..1 and 
    $intended-recipient named recipient 0..1 and
    ExtensionEEVRISOocyteOrigin named oocyteOrigin 0..1 and
    ExtensionEEVRISOocyteType named oocyteType 0..1 and    
    ExtensionEEVRISOocyteIntendedUse named intendedUse 0..1 and
    ExtensionEEVRISFertilityPreservationReason named preservationReason 0..1 and
    ExtensionEEVRISThawing named thawing 0..1

* extension[cryopreservationDate] ^short = "Külmutamise kuupäev"
* extension[cryopreservationReason] ^short = "(ee Külmutamise põhjus. Nt meditsiiniline, mittemeditsiiniline jne)"
//* extension[cellOrigin] ^short = "Suguraku päritolu roll. SIIA see kas on enda tarbeks või doonorlusesk!"
* extension[recipient] ^short = "(ee Kui on vaja retsipiendi seost, siis see tuleb täita patsiendi referentsiga.)"
* extension[oocyteOrigin] ^short = "(ee Munaraku päritolu. Nt patsiendi munarakk, PA munarakk jne)"
* extension[oocyteType] ^short = "(ee Munaraku tüüp. nt viljastamise päeval hangitud, külmutatud-sulatatud jne)"
* extension[intendedUse] ^short = "(ee Munaraku kasutusotstarve doonorluseks või enda tarbeks)"
* extension[preservationReason] ^short = "(ee Viljakuse säilitamise põhjus. Nt onkoloogiline, sooline üleminek jne)"
* extension[thawing] ^short = "(ee Sulatamine)"
* productCategory 0..0
* productCode 0..1
* productCode from $biological-material-type-VS
* productCode ^short = "Munarakk. FIX KOOD! (NB! Embryol on oma profiil EEVRISEmbryo). Vaja loendit!"
* productStatus 1..
* collection 1..
* collection.source 1..
* collection.source only Reference(EEVRISDonor or EEVRISRecipient)
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
    frozenCount 0..1 and
    metaPhase2count 0..1
* property[donatedCount] ^short = "Annetatud/saadud ühikute arv"
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
* property[metaPhase2count] ^short = "Metafaas II (MII) munarakkude arv"
* property[metaPhase2count] ^definition = "Metafaas II (MII) munarakkude arv"
* property[metaPhase2count].type.coding.code ^short = "olenevalt sugurakust on siin teatud kindel kood"
* property[metaPhase2count].type.coding from $vris-property-type2-VS
* property[metaPhase2count].value[x] only integer
* parent 0..0
* request 0..0
* division ^short = "KAS seda saaks kasutada osaproovide identifikaatoriks? Kas on vaja sellist jaotust? Nt kui osa munarakke külmutati ja osa kasutati värskelt vm, kas siis saaks sellega eristada?"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "Kas selle kaudu saaks viidata KÜLMUTAMISELE/vm protseduurile?"