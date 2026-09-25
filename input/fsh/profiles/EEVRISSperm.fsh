Profile: EEVRISSperm
Parent: BiologicallyDerivedProduct
Id: ee-vris-sperm
Title: "BiologicallyDerivedProduct: EE VRIS Sperm"
Description: "Profile for sperm. (ee Bioloogiline materjal (Seemnerakud)"

* ^status = #active
* . ^short = "Bioloogiline materjal, Seemnerakud."

* extension contains 
//    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
//    ExtensionEEVRISCellPreservationReason named preservationReason 0..1 and
//    ExtensionEEVRISFertilityPreservationMethod named preservationMethod 0..1 and
//    ExtensionEEVRISCellUsageState named usageState 0..1 and 
//    ExtensionEEVRISRole named cellOrigin 0..1 and
//    ExtensionEEVRISCollectionMethod named collection 0..1 and
    $intended-recipient named recipient 0..1
//    ExtensionEEVRISSpermDonorStimulationMethod named donorStimulationMethod 0..1

//* extension[cryopreservationDate] ^short = "(ee Külmutamise kuupäev)"
//* extension[preservationReason] ^short = "(ee VILJAKUSE säilitamise PÕHJUS)"
//* extension[preservationMethod] ^short = "(ee VILJAKUSE säilitamise MEETOD)"
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
* productStatus ^short = "(ee Staatuse kaudu saab broneeringut teha? NB Vaja loendit!)"
* collection 0..
* collection.source 1..
* collection.source only Reference(EEVRISDonor or EEVRISDonorAnonymous)
* collection.source ^short = "Reference of the donor. (ee Doonori viide, kes on annetanud bioloogilise materjali. Võib olla anonüümne aga patient.link kaudu ka MPIst.)"
* collection.collector 0..0
* collection.collectedDateTime ^short = "(ee AEG, millal sugurakud koguti ehk ANNETATI)"
//* property.type.coding from $vris-property-type-VS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type" //"type.coding.code.value"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "Characteristics of biologic material. (ee Bioloogilise materjali omadused)"
* property.type from $vris-property-type (required)
* property.type ^short = "(ee Omaduse tüüp VRIS loendist. NB! LOEND ja koodid võivad veel muutuda!)"
* property contains
    donatedCount 0..1 and
//    frozenCount 0..1 and
    Role 0..1 and
    collectionMethod 0..* and
    usageState 0..* and
    donorStimulationMethod 0..1 and
    preservationReason 0..1 and
    preservationMethod 0..1 and 
    preservationState 0..1

* property[donatedCount] ^short = "(ee Annetatud dooside arv)"
//* property[frozenCount] ^short = "(ee Külmutatud spermadooside arv)"
* property[Role] ^short = "(ee Suguraku päritolu roll: partner-annetaja, mittepartner, anonüümne doonor, säilitaja jne)"
* property[collectionMethod] ^short = "(ee Seemnerakkude kogumise meetod, nt ejakulatsioon, kirurgiline eemaldamine, elektroejakulatsioon)"
* property[usageState] ^short = "(ee Seemnerakkude SAAMISE meetod: värske, külmutatud-sulatatud, kombineeritud)"
* property[donorStimulationMethod] ^short = "(ee Seemnerakkude annetaja STIMULATSIOON: Follitropiin, Kooriongonadotropiin, Follitropiin+Kooriongonadotropiin, Muu)"
* property[preservationReason] ^short = "(ee VILJAKUSE säilitamise PÕHJUS)"
* property[preservationMethod] ^short = "(ee VILJAKUSE säilitamise MEETOD)"
* property[preservationState] ^short = "(ee värske|külmutatud|sulatatud|)"

* property[donatedCount].type = $vris-property-type#donated-count
* property[donatedCount].value[x] only integer

//* property[frozenCount].type = $vris-property-type#frozen-count
//* property[frozenCount].value[x] only integer

* property[Role].type = $vris-property-type#cell-origin-role
* property[Role].value[x] only CodeableConcept
* property[Role].valueCodeableConcept from $vris-cell-origin-role (required)

* property[collectionMethod].type = $vris-property-type#collection-method
* property[collectionMethod].value[x] only CodeableConcept
* property[collectionMethod].valueCodeableConcept from $vris-collection-method (required)

* property[usageState].type = $vris-property-type#usage-state
* property[usageState].value[x] only CodeableConcept
* property[usageState].valueCodeableConcept from $vris-cell-usage-state (required)

* property[donorStimulationMethod].type = $vris-property-type#donor-stimulation-method
* property[donorStimulationMethod].value[x] only CodeableConcept
* property[donorStimulationMethod].valueCodeableConcept from $vris-sperm-donor-stimulation-method (required)

* property[preservationReason].type = $vris-property-type#preservation-reason
* property[preservationReason].value[x] only CodeableConcept
* property[preservationReason].valueCodeableConcept from $vris-cell-preservation-reason (required)

* property[preservationMethod].type = $vris-property-type#preservation-method
* property[preservationMethod].value[x] only CodeableConcept
* property[preservationMethod].valueCodeableConcept from $vris-fertility-preservation-method (required)

* property[preservationState].type = $vris-property-type#preservation-state
* property[preservationState].value[x] only CodeableConcept
* property[preservationState].valueCodeableConcept from $vris-preservation-state (required)

* request 0..0

* expirationDate 0..1
* storageTempRequirements 0..1
* biologicalSourceEvent ^short = "(ee See on viide pakenditeülesele ühisele identifikaatorile, division näitab erineva pakendi numbrit)"

* division ^short = "(ee Pakendi number kogumissündmuse sees: 1, 2, 3...)"
* parent ^short = "(ee Viide lähtematerjalile, millest see pakend eraldati)"

* obeys vris-bdp-1 and vris-bdp-2 and vris-bdp-3 and vris-bdp-4
