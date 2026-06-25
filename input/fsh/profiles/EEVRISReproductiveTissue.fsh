Profile: EEVRISReproductiveTissue
Parent: BiologicallyDerivedProduct
Id: ee-vris-reproductive-tissue
Title: "BiologicallyDerivedProduct: EE VRIS Reproductive Tissue"
Description: "Profile for reproductive tissue (testicular tissue, ovarian tissue). Used mainly for fertility preservation. (ee Bioloogiline materjal (munandi kude, munasarja kude). Kasutatakse peamiselt viljakuse säilitamiseks.)"

* ^status = #active
* . ^short = "Bioloogiline materjal, munandi või munasarja kude."

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
    ExtensionEEVRISCellPreservationReason named cryopreservationReason 0..1 and
    ExtensionEEVRISCollectionMethod named collection 0..1 and 
    ExtensionEEVRISCellOriginRole named cellOrigin 0..1 and
    $intended-recipient named recipient 0..1
* extension[cryopreservationDate] ^short = "(ee Külmutamise kuupäev)"
* extension[cryopreservationReason] ^short = "(ee Külmutamise põhjus, nt enne onkoloogilist ravi)"
* extension[collection] ^short = "(ee Koe kogumise meetod, nt biopsia)"
* extension[cellOrigin] ^short = "(ee Koe päritolu roll)"
* extension[recipient] ^short = "(ee Kui on vaja retsipiendi seost, siis see tuleb täita patsiendi referentsiga. Tavaliselt on retsipient sama isik kes doonor (autoloogne säilitamine).)"

* productCategory 0..1
* productCategory ^short = "(ee Toote kategooria, kude (tissue) KAS SEDA ON  VAJA????)"
* productCode 1..1
* productCode from $biological-material-type-VS
* productCode ^short = "(ee Munandi kude või munasarja kude. NB! Vaja loendit!)"
* productStatus 1..1
* collection 1..1
* collection.source 1..1
* collection.source only Reference(EEVRISDonor or EEVRISRecipient)
* collection.source ^short = "(ee Doonori/patsiendi viide, kellelt kude kogutud. Sama isik on doonor ja tulevane retsipient?)"
* collection.collector 0..1
* collection.collector ^short = "(ee Kude koguv tervishoiutöötaja)"

* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.coding"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "(ee Bioloogilise materjali (koe) omadused)"
* property contains
    fragmentCount 0..1 and
    frozenFragmentCount 0..1

* property[fragmentCount] ^short = "(ee Koetükkide arv)"
* property[fragmentCount].type.coding from $vris-property-type1-VS
* property[fragmentCount].type.coding.code ^short = "(ee Olenevalt koest on siin teatud kindel kood)"
* property[fragmentCount].value[x] only integer

* property[frozenFragmentCount] ^short = "(ee Külmutatud koetükkide arv)"
* property[frozenFragmentCount].type.coding from $vris-property-type2-VS
* property[frozenFragmentCount].type.coding.code ^short = "(ee Olenevalt koest on siin teatud kindel kood)"
* property[frozenFragmentCount].value[x] only integer

* parent 0..0
* request 0..0
* division ^short = "(ee KAS seda saaks kasutada osaproovide/koetükkide identifikaatoriks?)"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "(ee Kas selle kaudu saaks viidata KOGUMISELE/biopsiale vm protseduurile?)"