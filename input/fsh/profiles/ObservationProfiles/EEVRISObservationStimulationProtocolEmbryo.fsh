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
* code = $sct#63487001 //|Assisted fertilization (procedure)| NB! OTSI uus kood!
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
    preparationProtocol 0..1 and
    lutealPhaseSupport 0..1

* component[preparationProtocol] ^short = "(ee Munasarjade stimulatsioon Jah/Ei)"
* component[preparationProtocol].code.text = "TODO: SNOMED CT otsi 'luteal phase support'"
* component[preparationProtocol].value[x] only CodeableConcept
* component[lutealPhaseSupport].valueCodeableConcept from $vris-preparation-protocol-VS (required)

* component[lutealPhaseSupport] ^short = "(ee Luteaalfaasi toetus. LOEND: Ei toimunud, Inimese kooriongonadotropiin, Progesteroon, Muud progestageenid, Kombinatsioon)"
* component[lutealPhaseSupport].code.text = "TODO: SNOMED CT otsi 'luteal phase support'"
* component[lutealPhaseSupport].value[x] only CodeableConcept
* component[lutealPhaseSupport].valueCodeableConcept from $vris-luteal-phase-support-VS (required)

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