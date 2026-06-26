Profile: EEVRISObservationStimulationProtocol
Parent: Observation
Id: ee-vris-observation-stimulation-protocol
Title: "Observation: EE VRIS Ovarian Stimulation Protocol"
Description: "Captures ovarian stimulation protocol details for fertility treatment cycle. (ee Munasarjade stimulatsiooni protokoll sisaldab meetodi, supressiooni, gonadotropiini ja eelneva ravi info.)"
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
    ovarianStimulation 0..1 and
    preStimulationTreatment 0..1 and
    lhSuppressionProtocol 0..1 and
    gonadotropinUse 0..1 and
    finalOocyteMaturationTrigger 0..1 and
    lutealPhaseSupport 0..1 and
    previousTreatmentContinuedUntil 0..1

* component[ovarianStimulation] ^short = "(ee Munasarjade stimulatsioon Jah/Ei)"
* component[ovarianStimulation].code = $sct#732970000 //|Controlled ovarian stimulation (procedure)|
* component[ovarianStimulation].value[x] only boolean

* component[preStimulationTreatment] ^short = "(ee Stimulatsioonieelne ravi)"
* component[preStimulationTreatment].code.text = "TODO: SNOMED CT otsi 'pre-stimulation treatment'"
* component[preStimulationTreatment].value[x] only CodeableConcept
* component[preStimulationTreatment].valueCodeableConcept from $vris-pre-stimulation-treatment-VS (required)

* component[lhSuppressionProtocol] ^short = "(ee Luteiniseeriva hormooni supressiooni protokoll. NB! LOEND VAja)"
* component[lhSuppressionProtocol].code.text = "TODO: SNOMED CT otsi 'LH suppression protocol' / 'GnRH protocol'"
* component[lhSuppressionProtocol].value[x] only CodeableConcept
* component[lhSuppressionProtocol].valueCodeableConcept from $vris-lh-suppression-protocol-VS (required)

* component[gonadotropinUse] ^short = "(ee Gonadotropiini kasutus. NB! VAJA LOENDIT!)"
* component[gonadotropinUse].code.text = "TODO: SNOMED CT otsi 'gonadotropin'"
* component[gonadotropinUse].value[x] only CodeableConcept
* component[gonadotropinUse].valueCodeableConcept from $vris-gonadotropin-use-VS (required)

* component[finalOocyteMaturationTrigger] ^short = "(ee Munarakkude lõpliku küpsemise käivitamine trigger NB! LOEND VAJA!)"
* component[finalOocyteMaturationTrigger].code.text = "TODO: SNOMED CT otsi 'oocyte maturation trigger' / 'hCG trigger'"
* component[finalOocyteMaturationTrigger].value[x] only CodeableConcept
* component[finalOocyteMaturationTrigger].valueCodeableConcept from $vris-oocyte-trigger-VS (required)

* component[lutealPhaseSupport] ^short = "(ee Luteaalfaasi toetus. LOEND: Ei toimunud, Inimese kooriongonadotropiin, Progesteroon, Muud progestageenid, Kombinatsioon)"
* component[lutealPhaseSupport].code.text = "TODO: SNOMED CT otsi 'luteal phase support'"
* component[lutealPhaseSupport].value[x] only CodeableConcept
* component[lutealPhaseSupport].valueCodeableConcept from $vris-luteal-phase-support-VS (required)

* component[previousTreatmentContinuedUntil] ^short = "(ee Eelnev ravi jätkus kuni)"
* component[previousTreatmentContinuedUntil].code.text = "TODO: SNOMED CT otsi 'date previous treatment ended'"
* component[previousTreatmentContinuedUntil].value[x] only dateTime

* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0