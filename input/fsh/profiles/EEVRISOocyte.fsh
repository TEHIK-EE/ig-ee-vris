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
    $intended-recipient named recipient 0..1 and
    ExtensionEEVRISThawing named thawing 0..1

* extension[cryopreservationDate] ^short = "(ee Külmutamise kuupäev)"
* extension[cryopreservationReason] ^short = "(ee Külmutamise põhjus)"
* extension[recipient] ^short = "(ee Retsipiendi viide, kui on määratud)"
* extension[thawing] ^short = "(ee Sulatamise kuupäev ja arv)"
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
    metaPhase2Count 0..1 and
    cellOriginRole 0..1 and
    collectionMethod 0..1 and
    oocyteOrigin 0..1 and
    oocyteType 0..1 and
    intendedUse 0..1 and
    preservationReason 0..1

* property[donatedCount] ^short = "(ee Annetatud/saadud munarakkude arv)"
* property[donatedCount].type.coding = $vris-property-type#donated-count
* property[donatedCount].value[x] only integer

* property[frozenCount] ^short = "(ee Külmutatud munarakkude arv)"
* property[frozenCount].type.coding = $vris-property-type#frozen-count
* property[frozenCount].value[x] only integer

* property[metaPhase2Count] ^short = "(ee Metafaas II (MII) munarakkude arv)"
* property[metaPhase2Count].type.coding = $vris-property-type#meta-phase-2-count
* property[metaPhase2Count].value[x] only integer

* property[cellOriginRole] ^short = "(ee Munaraku päritolu roll: enda tarbeks / doonorluseks / anonüümne jne)"
* property[cellOriginRole].type.coding = $vris-property-type#cell-origin-role
* property[cellOriginRole].value[x] only CodeableConcept
* property[cellOriginRole].valueCodeableConcept from $vris-cell-origin-role (required)

* property[collectionMethod] ^short = "(ee Munaraku kogumise meetod)"
* property[collectionMethod].type.coding = $vris-property-type#collection-method
* property[collectionMethod].value[x] only CodeableConcept
* property[collectionMethod].valueCodeableConcept from $vris-collection-method (required)

* property[oocyteOrigin] ^short = "(ee Munaraku päritolu: patsiendi enda munarakk, PA munarakk jne)"
* property[oocyteOrigin].type.coding = $vris-property-type#oocyte-origin
* property[oocyteOrigin].value[x] only CodeableConcept
* property[oocyteOrigin].valueCodeableConcept from $vris-oocyte-origin (required)

* property[oocyteType] ^short = "(ee Munaraku tüüp: viljastamise päeval hangitud / külmutatud-sulatatud jne)"
* property[oocyteType].type.coding = $vris-property-type#oocyte-type
* property[oocyteType].value[x] only CodeableConcept
* property[oocyteType].valueCodeableConcept from $vris-oocyte-type (required)

* property[intendedUse] ^short = "(ee Munaraku kasutusotstarve: doonorluseks või enda tarbeks)"
* property[intendedUse].type.coding = $vris-property-type#intended-use
* property[intendedUse].value[x] only CodeableConcept
* property[intendedUse].valueCodeableConcept from $vris-oocyte-intended-use (required)

* property[preservationReason] ^short = "(ee Viljakuse säilitamise põhjus: onkoloogiline, sooline üleminek jne)"
* property[preservationReason].type.coding = $vris-property-type#preservation-reason
* property[preservationReason].value[x] only CodeableConcept
* property[preservationReason].valueCodeableConcept from $vris-fertility-preservation-reason (required)

* parent 0..0
* request 0..0
* division ^short = "KAS seda saaks kasutada osaproovide identifikaatoriks? Kas on vaja sellist jaotust? Nt kui osa munarakke külmutati ja osa kasutati värskelt vm, kas siis saaks sellega eristada?"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "Kas selle kaudu saaks viidata KÜLMUTAMISELE/vm protseduurile?"