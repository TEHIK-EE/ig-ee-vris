Profile: EEVRISSperm
Parent: BiologicallyDerivedProduct
Id: ee-vris-sperm
Title: "BiologicallyDerivedProduct: EE VRIS Sperm"
Description: "Profile for sperm. (ee Bioloogiline materjal (Seemnerakud)"

* ^status = #active
* . ^short = "Bioloogiline materjal, Seemnerakud."

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
    ExtensionEEVRISCellPreservationReason named cryopreservationReason 0..1 and
//    ExtensionEEVRISCellUsageState named usageState 0..1 and 
//    ExtensionEEVRISCellOriginRole named cellOrigin 0..1 and
//    ExtensionEEVRISCollectionMethod named collection 0..1 and
    $intended-recipient named recipient 0..1
//    ExtensionEEVRISSpermDonorStimulationMethod named donorStimulationMethod 0..1

* extension[cryopreservationDate] ^short = "(ee Külmutamise kuupäev)"
* extension[cryopreservationReason] ^short = "(ee Külmutamise põhjus)"
//* extension[collection] ^short = "(ee Suguraku (sperma) KOGUMISE meetod)"
//* extension[cellOrigin] ^short = "(ee Suguraku päritolu roll, partner-annetaja, mittepartner jne)"
* extension[recipient] ^short = "(ee Kui on vaja retsipiendi seost, siis see tuleb täita patsiendi referentsiga.)"
//* extension[usageState] ^short = "(ee SAAMISE meetod. Kas värske v sulatatud jne)"
//* extension[donorStimulationMethod] ^short = "(ee Mehe stimulatsiooni meetod (nt follitropiin jne))"
//* extension[oocyteOrigin] ^short = "Munaraku päritolu"
//* extension[oocyteType] ^short = "Munaraku tüüp"
* productCategory 0..0
* productCode 0..1
* productCode from $biological-material-type-VS
* productCode ^short = "(ee Sperma, fix kood! Vaja loendit! KAS on vaja kui igal sugurakul on oma profiil???)"
* productStatus 1..
* productStatus ^short = "(ee Staatuse kaudu saab vroneeringut teha? NB Vaja loendit!)"
* collection 1..
* collection.source 1..
* collection.source only Reference(EEVRISDonor)
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
    cellOriginRole 0..1 and
    collectionMethod 0..1 and
    usageState 0..1 and
    donorStimulationMethod 0..1
* property[donatedCount] ^short = "(ee Annetatud dooside arv)"
* property[frozenCount] ^short = "(ee Külmutatud spermadooside arv)"
* property[cellOriginRole] ^short = "(ee Suguraku päritolu roll: partner-annetaja, mittepartner, anonüümne doonor, säilitaja jne)"
* property[collectionMethod] ^short = "(ee Seemnerakkude kogumise meetod, nt ejakulatsioon, kirurgiline eemaldamine, elektroejakulatsioon)"
* property[usageState] ^short = "(ee Seemnerakkude SAAMISE meetod: värske, külmutatud-sulatatud, kombineeritud)"
* property[donorStimulationMethod] ^short = "(ee Seemnerakkude annetaja stimulatsioon: Follitropiin, Kooriongonadotropiin, Follitropiin+Kooriongonadotropiin, Muu)"

* property[donatedCount].type.coding = $vris-property-type#donated-count
* property[donatedCount].value[x] only integer

* property[frozenCount].type.coding = $vris-property-type#frozen-count
* property[frozenCount].value[x] only integer

* property[cellOriginRole].type.coding = $vris-property-type#cell-origin-role
* property[cellOriginRole].value[x] only CodeableConcept
* property[cellOriginRole].valueCodeableConcept from $vris-cell-origin-role (required)

* property[collectionMethod].type.coding = $vris-property-type#collection-method
* property[collectionMethod].value[x] only CodeableConcept
* property[collectionMethod].valueCodeableConcept from $vris-collection-method (required)

* property[usageState].type.coding = $vris-property-type#usage-state
* property[usageState].value[x] only CodeableConcept
* property[usageState].valueCodeableConcept from $vris-cell-usage-state (required)

* property[donorStimulationMethod].type.coding = $vris-property-type#donor-stimulation-method
* property[donorStimulationMethod].value[x] only CodeableConcept
* property[donorStimulationMethod].valueCodeableConcept from $vris-sperm-donor-stimulation-method (required)
* parent 0..0
* request 0..0
* division ^short = "KAS seda saaks kasutada osaproovide identifikaatoriks? Kas on vaja sellist jaotust?"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "Kas selle kaudu saaks viidata KÜLMUTAMISELE/vm protseduurile?"