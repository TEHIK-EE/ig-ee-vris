Profile: EEVRISObservationStimulationProtocolEmbryo
Parent: Observation
Id: ee-vris-observation-stimulation-protocol-embryo
Title: "Observation: EE VRIS Stimulation Protocol for Embryo Transfer"
Description: "Captures stimulation protocol details for thawed embryo. (ee Sulatatud embrüo siirdamise protokoll jm.)"
* ^status = #draft

* status = #final
* category 1..*
* category = $obsCategory#procedure
* code 1..1
* code = $vris-observation-code#236894009 // |Külmutatud embrüo siirdamine| 
* code ^short = "(ee NB! Kood on placeholder! Vaja õiget koodi!)"
* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Protokolli sisestamise/kasutamise kuupäev)"

* value[x] 0..0
* dataAbsentReason 0..0
* note 0..*

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    ovarianStimulation 0..1 and
    lhSuppression 0..1 and
    lhSuppressionMethod 0..*

* component[ovarianStimulation] ^short = "(ee Munasarjade stimulatsioon Jah/Ei)"
* component[ovarianStimulation].code = $vris-stim-component#ovarian-stimulation //|Controlled ovarian stimulation (procedure)|
* component[ovarianStimulation].value[x] only boolean

* component[lhSuppression] ^short = "(ee Luteiniseeriva hormooni (LH) supressiooni protokoll Jah/Ei)"
* component[lhSuppression].code = $vris-stim-component#lh-suppression
* component[lhSuppression].value[x] 1..1
* component[lhSuppression].value[x] only boolean

* component[lhSuppressionMethod] ^short = "(ee LH supressiooni protokolli meetod. Mitu valikut lubatud.)"
* component[lhSuppressionMethod].code = $vris-stim-component#lh-suppression-method
* component[lhSuppressionMethod].value[x] 1..1
* component[lhSuppressionMethod].value[x] only CodeableConcept
//* component[lhSuppressionMethod].valueCodeableConcept from $vris-lh-suppression-protocol-VS (required)

* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0

/*
* obeys vris-stim-protocol-gonadotropin
* obeys vris-stim-protocol-follitropin

Invariant: vris-stim-protocol-gonadotropin
Description: "If stimulation medication includes gonadotropin, gonadotropin type must be specified"
Severity: #error
Expression: "component.where(code.coding.code='stimulation-medication').value.coding.code in ('oral-and-gonadotropin' | 'gonadotropin-only') implies component.where(code.coding.code='gonadotropin-type').exists()"

Invariant: vris-stim-protocol-follitropin
Description: "If FSH (uFSH or rFSH) was used, total Follitropin dose must be specified"
Severity: #error
Expression: "component.where(code.coding.code='gonadotropin-type').value.coding.code in ('uFSH' | 'rFSH') implies component.where(code.coding.code='follitropin-total-dose').exists()"
*/