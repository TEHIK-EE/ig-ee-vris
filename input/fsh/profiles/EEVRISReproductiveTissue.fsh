Profile: EEVRISReproductiveTissue
Parent: BiologicallyDerivedProduct
Id: ee-vris-reproductive-tissue
Title: "BiologicallyDerivedProduct: EE VRIS Reproductive Tissue"
Description: "Profile for reproductive tissue (testicular tissue, ovarian tissue). Used mainly for fertility preservation. (ee Bioloogiline materjal (munandi kude, munasarja kude). Kasutatakse peamiselt viljakuse säilitamiseks.)"

* ^status = #active

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
    ExtensionEEVRISCellPreservationReason named cryopreservationReason 0..1 and
    $intended-recipient named recipient 0..1

* extension[cryopreservationDate] ^short = "(ee Külmutamise kuupäev)"
* extension[cryopreservationReason] ^short = "(ee Külmutamise põhjus, nt enne onkoloogilist ravi)"
* extension[recipient] ^short = "(ee Retsipiendi viide. Tavaliselt on retsipient sama isik kes doonor (autoloogne säilitamine).)"

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
    frozenFragmentCount 0..1 and
    Role 0..1 and
    collectionMethod 0..1

* property[fragmentCount].value[x] ^short = "(ee Koetükkide arv)"
* property[fragmentCount].type.coding = $vris-property-type#fragment-count
* property[fragmentCount].value[x] only integer

* property[frozenFragmentCount].value[x] ^short = "(ee Külmutatud koetükkide arv)"
* property[frozenFragmentCount].type.coding = $vris-property-type#frozen-fragment-count
* property[frozenFragmentCount].value[x] only integer

* property[Role].value[x] ^short = "(ee Koe päritolu roll: autoloogne / doonorluseks jne)"
* property[Role].type.coding = $vris-property-type#cell-origin-role
* property[Role].value[x] only CodeableConcept
* property[Role].valueCodeableConcept from $vris-cell-origin-role (required)

* property[collectionMethod].value[x] ^short = "(ee Koe kogumise meetod, nt biopsia)"
* property[collectionMethod].type.coding = $vris-property-type#collection-method
* property[collectionMethod].value[x] only CodeableConcept
* property[collectionMethod].valueCodeableConcept from $vris-collection-method (required)
* parent 0..0
* request 0..0
* division ^short = "(ee KAS seda saaks kasutada osaproovide/koetükkide identifikaatoriks?)"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "(ee Kas selle kaudu saaks viidata KOGUMISELE/biopsiale vm protseduurile?)"