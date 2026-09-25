Profile: EEVRISReproductiveTissue
Parent: BiologicallyDerivedProduct
Id: ee-vris-reproductive-tissue
Title: "BiologicallyDerivedProduct: EE VRIS Reproductive Tissue"
Description: "Profile for reproductive tissue (testicular tissue, ovarian tissue). Used mainly for fertility preservation. (ee Bioloogiline materjal (munandi kude, munasarja kude). Kasutatakse peamiselt viljakuse säilitamiseks.)"

* ^status = #active

* extension contains 
    ExtensionEEVRISCryopreservationDate named cryopreservationDate 0..1 and
  //  ExtensionEEVRISCellPreservationReason named preservationReason 0..1 and
    $intended-recipient named recipient 0..1

* extension[cryopreservationDate] ^short = "(ee Külmutamise kuupäev)"
//* extension[preservationReason] ^short = "(ee VILJAKUSE säilitamise põhjus, nt enne onkoloogilist ravi)"
* extension[recipient] ^short = "(ee Retsipiendi viide. Tavaliselt on retsipient sama isik kes doonor (autoloogne säilitamine).)"

* productCategory 0..0
* productCategory ^short = "(ee Toote kategooria, kude (tissue) KAS SEDA ON  VAJA????)"
* productCode 1..1
* productCode from $biological-material-type-VS
* productCode ^short = "(ee Munandi kude või munasarja kude. NB! Vaja loendit!)"
* productStatus 1..1
* collection 1..1
* collection.source 1..1
* collection.source only Reference(EEVRISDonor)
* collection.source ^short = "(ee Doonori/patsiendi viide, kellelt kude kogutud. Sama isik on doonor ja tulevane retsipient?)"
* collection.collector 0..1
* collection.collector ^short = "(ee Kude koguv tervishoiutöötaja)"

* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.ordered = false
* property ^slicing.description = "(ee Bioloogilise materjali (koe) omadused)"
* property contains
    fragmentCount 0..1 and
    frozenFragmentCount 0..1 and
    Role 0..1 and
    collectionMethod 0..1 and
    preservationReason 0..1 and 
    pubertalStatus 0..1 and
    preservationState 0..1

* property[fragmentCount].value[x] ^short = "(ee Koetükkide arv)"
* property[fragmentCount].type = $vris-property-type#fragment-count
* property[fragmentCount].value[x] only integer

* property[frozenFragmentCount].value[x] ^short = "(ee Külmutatud koetükkide arv)"
* property[frozenFragmentCount].type = $vris-property-type#frozen-fragment-count
* property[frozenFragmentCount].value[x] only integer

* property[Role].value[x] ^short = "(ee Koe päritolu roll: enda tarbeks / doonorluseks jne)"
* property[Role].type = $vris-property-type#cell-origin-role
* property[Role].value[x] only CodeableConcept
* property[Role].valueCodeableConcept from $vris-cell-origin-role (required)

* property[collectionMethod].value[x] ^short = "(ee Koe kogumise meetod, nt biopsia)"
* property[collectionMethod].type = $vris-property-type#collection-method
* property[collectionMethod].value[x] only CodeableConcept
* property[collectionMethod].valueCodeableConcept from $vris-collection-method (required)

* property[preservationReason] ^short = "(ee VILJAKUSE säilitamise PÕHJUS, nt enne onkoloogilist ravi)"
* property[preservationReason].type = $vris-property-type#preservation-reason
* property[preservationReason].value[x] only CodeableConcept
* property[preservationReason].valueCodeableConcept from $vris-fertility-preservation-reason (required)

* property[pubertalStatus] ^short = "(ee Kas kude koguti puberteedieelselt või -järgselt)"
* property[pubertalStatus].type = $vris-property-type#pubertal-status
* property[pubertalStatus].value[x] only CodeableConcept
* property[pubertalStatus].valueCodeableConcept from $vris-pubertal-status (required)

* property[preservationState] ^short = "(ee värske|külmutatud|sulatatud|)"
* property[preservationState].type = $vris-property-type#preservation-state
* property[preservationState].value[x] only CodeableConcept
* property[preservationState].valueCodeableConcept from $vris-preservation-state (required)

* request 0..0

* division ^short = "(ee Pakendi number kogumissündmuse sees: 1, 2, 3...)"
* parent ^short = "(ee Viide lähtematerjalile, millest see pakend eraldati)"
* expirationDate 0..0
* storageTempRequirements 0..0
* biologicalSourceEvent ^short = "(ee See on viide pakenditeülesele ühisele identifikaatorile, division näitab erineva pakendi numbrit)"


* obeys vris-bdp-1 and vris-bdp-3 and vris-bdp-4