Profile: EEVRISObservationPriorFertilityTreatment
Parent: Observation
Id: ee-vris-observation-prior-fertility-treatment
Title: "Observation: EE VRIS Prior Fertility Treatment"
Description: "Prior fertility treatment history. Records whether IVF and/or IUI has been performed and the number of cycles. (ee Varasema viljatusravi anamnees)"
* basedOn 0..0
* partOf 0..0
* status 1..1
* status ^short = "Observation status"
* category 0..*
* category ^short = "Observation category"
* code 1..1
* code ^short = "(ee Varasem viljatusravi. NB! ÕIGE snomed kood on puudu! See on placeholder!)"
* code = $sct#416940007 "History of procedure" 
* subject 1..1
* subject only Reference(EEVRISRecipient or $mpi-patient)
* subject ^short = "(ee Patient ainult viljatusravi saav naine)"
* focus 0..0
* encounter 0..0
* effective[x] 1..1
* effective[x] ^short = "(ee Anamneesi kogumise kuupäev)"
* issued 0..0
//* issued ^short = "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
* performer 0..*
* performer ^short = "(ee Kes salvestas. NB! Viide SPD-le)"
* value[x] 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* note 0..*
* note ^short = "(ee Lisainfo / märkused)"
* bodySite 0..0
* bodyStructure 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "(ee Varasema viljatusravi komponendid)"
* component contains
    priorIVF 0..1 and
    ivfCyclesCount 0..1 and
    priorIUI 0..1 and
    iuiCyclesCount 0..1

* component[priorIVF] ^short = "Varasem IVF toimunud (jah/ei)"
* component[priorIVF].code = $sct#52637005 "Test tube ovum fertilization"
* component[priorIVF].code ^short = "Prior IVF performed"
* component[priorIVF].value[x] only boolean
* component[priorIVF].value[x] ^short = "true = Jah, false = Ei"
* component[priorIVF].dataAbsentReason 0..0
* component[priorIVF].interpretation 0..0
* component[priorIVF].referenceRange 0..0

* component[ivfCyclesCount] ^short = "IVF tsüklite arv (kuvatakse kui IVF = Jah)"
* component[ivfCyclesCount].code = $fertility-treatment-component-CS#ivf-cycles-count
* component[ivfCyclesCount].code ^short = "IVF cycles count. (ee NB! VAJA KOODI!)"
* component[ivfCyclesCount].value[x] only integer
* component[ivfCyclesCount].value[x] ^short = "IVF tsüklite arv"
* component[ivfCyclesCount].dataAbsentReason 0..0
* component[ivfCyclesCount].interpretation 0..0
* component[ivfCyclesCount].referenceRange 0..0

* component[priorIUI] ^short = "Varasem IUI toimunud (jah/ei)"
* component[priorIUI].code = $fertility-treatment-component-CS#prior-iui
* component[priorIUI].code ^short = "Prior IUI performed (ee NB! VAJA KOODI!)"
* component[priorIUI].value[x] only boolean
* component[priorIUI].value[x] ^short = "true = Jah, false = Ei"
* component[priorIUI].dataAbsentReason 0..0
* component[priorIUI].interpretation 0..0
* component[priorIUI].referenceRange 0..0

* component[iuiCyclesCount] ^short = "IUI tsüklite arv (kuvatakse kui IUI = Jah)"
* component[iuiCyclesCount].code = $fertility-treatment-component-CS#iui-cycles-count
* component[iuiCyclesCount].code ^short = "IUI cycles count(ee NB! VAJA KOODI!)"
* component[iuiCyclesCount].value[x] only integer
* component[iuiCyclesCount].value[x] ^short = "IUI tsüklite arv"
* component[iuiCyclesCount].dataAbsentReason 0..0
* component[iuiCyclesCount].interpretation 0..0
* component[iuiCyclesCount].referenceRange 0..0