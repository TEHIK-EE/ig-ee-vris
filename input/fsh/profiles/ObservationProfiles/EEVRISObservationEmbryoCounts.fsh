Profile: EEVRISObservationEmbryoLifecycleCounts
Parent: Observation
Id: ee-vris-observation-embryo-lifecycle-counts
Title: "Observation: EE VRIS Embryo Lifecycle Counts"
Description: "Summary counts of embryo lifecycle events in a fertility treatment cycle (frozen, transferred, destroyed). (ee Embrüote elutsükli kokkuvõtted: külmutatud, siirdatud, hävitatud arv tsüklis.)"
* ^status = #draft

* status = #final
* code 1..1
//* code.text = "TODO: SNOMED CT – otsi 'embryo count' / 'embryo lifecycle summary'"
* code ^short = "(ee NB! SNOMED kood vajab kontrolli)"

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Patsient, kelle embrüoid loendatakse. Kas viide patsiendile või embrüole? Või mõlemale? OTSUSTADA!)"

* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Hindamise/kokkuvõtte aeg)"

* partOf 0..*
* partOf only Reference(EEVRISProcedureFertilization)
* partOf ^short = "(ee Viide viljastamise protseduurile, mille embrüoid loendatakse)"

* focus only Reference(EEVRISEmbryo)

* value[x] 0..0
* note 0..*

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    frozenEmbryoCount 0..1 and
    transferredEmbryoCount 0..1 and
    destroyedEmbryoCount 0..1

* component[frozenEmbryoCount] ^short = "(ee Külmutatud embrüote arv tsüklis)"
* component[frozenEmbryoCount].code.text = "TODO: SNOMED CT"
* component[frozenEmbryoCount].value[x] only integer

* component[transferredEmbryoCount] ^short = "(ee Siirdatud embrüote arv tsüklis 0-3)"
* component[transferredEmbryoCount].code.text = "TODO: SNOMED CT"
* component[transferredEmbryoCount].value[x] only integer

* component[destroyedEmbryoCount] ^short = "(ee Hävitatud embrüote arv tsüklis)"
* component[destroyedEmbryoCount].code.text = "TODO: SNOMED CT"
* component[destroyedEmbryoCount].value[x] only integer