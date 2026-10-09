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
* code = $vris-observation-code#123 //|Assisted fertilization (procedure)| NB! OTSI uus kood!
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
    ovarianStimulation 1..1 and
    preStimulationTreatment 0..1 and
    preStimulationTreatmentMethod 0..* and
    lhSuppression 0..1 and
    lhSuppressionMethod 0..* and
    gonadotropinUse 0..* and
    finalOocyteMaturationTrigger 0..1 and
    finalOocyteMaturationTriggerMethod 0..* and
    lutealPhaseSupport 0..1 and
    lutealPhaseSupportMethod 0..* and
    previousTreatmentContinuedUntil 0..1

* component[ovarianStimulation] ^short = "(ee Munasarjade stimulatsioon Jah/Ei)"
* component[ovarianStimulation].code = $vris-stim-component#ovarian-stimulation
* component[ovarianStimulation].value[x] 1..1
* component[ovarianStimulation].value[x] only boolean

* component[preStimulationTreatment] ^short = "(ee Stimulatsioonieelne ravi Jah/Ei)"
* component[preStimulationTreatment].code = $vris-stim-component#pre-stimulation-treatment
* component[preStimulationTreatment].value[x] 1..1
* component[preStimulationTreatment].value[x] only boolean

* component[preStimulationTreatmentMethod] ^short = "(ee Stimulatsioonieelse ravi meetod. Mitu valikut lubatud — iga valik eraldi komponendina.)"
* component[preStimulationTreatmentMethod].code = $vris-stim-component#pre-stimulation-treatment-method
* component[preStimulationTreatmentMethod].value[x] 1..1
* component[preStimulationTreatmentMethod].value[x] only CodeableConcept
* component[preStimulationTreatmentMethod].valueCodeableConcept from $vris-pre-stimulation-treatment-VS (required)

* component[lhSuppression] ^short = "(ee Luteiniseeriva hormooni (LH) supressiooni protokoll Jah/Ei)"
* component[lhSuppression].code = $vris-stim-component#lh-suppression
* component[lhSuppression].value[x] 1..1
* component[lhSuppression].value[x] only boolean

* component[lhSuppressionMethod] ^short = "(ee LH supressiooni protokolli meetod. Mitu valikut lubatud.)"
* component[lhSuppressionMethod].code = $vris-stim-component#lh-suppression-method
* component[lhSuppressionMethod].value[x] 1..1
* component[lhSuppressionMethod].value[x] only CodeableConcept
* component[lhSuppressionMethod].valueCodeableConcept from $vris-lh-suppression-protocol-VS (required)

* component[gonadotropinUse] ^short = "(ee Gonadotropiin. Mitu valikut lubatud. Koguannus tuleb EEVRISMedicationAdministration.dosage.dose kaudu)"
* component[gonadotropinUse].code = $vris-stim-component#gonadotropin-use
* component[gonadotropinUse].value[x] 1..1
* component[gonadotropinUse].value[x] only CodeableConcept
* component[gonadotropinUse].valueCodeableConcept from $vris-gonadotropin-use-VS (required)

* component[finalOocyteMaturationTrigger] ^short = "(ee Munarakkude lõpliku küpsemise käivitamine Jah/Ei)"
* component[finalOocyteMaturationTrigger].code = $vris-stim-component#final-oocyte-maturation-trigger
* component[finalOocyteMaturationTrigger].value[x] 1..1
* component[finalOocyteMaturationTrigger].value[x] only boolean

* component[finalOocyteMaturationTriggerMethod] ^short = "(ee Munarakkude lõpliku küpsemise käivitamise meetod. Mitu valikut lubatud.)"
* component[finalOocyteMaturationTriggerMethod].code = $vris-stim-component#final-oocyte-maturation-trigger-method
* component[finalOocyteMaturationTriggerMethod].value[x] 1..1
* component[finalOocyteMaturationTriggerMethod].value[x] only CodeableConcept
* component[finalOocyteMaturationTriggerMethod].valueCodeableConcept from $vris-oocyte-trigger-VS (required)

* component[lutealPhaseSupport] ^short = "(ee Luteaalfaasi toetus Jah/Ei)"
* component[lutealPhaseSupport].code = $vris-stim-component#luteal-phase-support
* component[lutealPhaseSupport].value[x] 1..1
* component[lutealPhaseSupport].value[x] only boolean

* component[lutealPhaseSupportMethod] ^short = "(ee Luteaalfaasi toetuse meetod. Mitu valikut lubatud.)"
* component[lutealPhaseSupportMethod].code = $vris-stim-component#luteal-phase-support-method
* component[lutealPhaseSupportMethod].value[x] 1..1
* component[lutealPhaseSupportMethod].value[x] only CodeableConcept
* component[lutealPhaseSupportMethod].valueCodeableConcept from $vris-luteal-phase-support-VS (required)

* component[previousTreatmentContinuedUntil] ^short = "(ee Eelnev ravi jätkus kuni)"
* component[previousTreatmentContinuedUntil].code = $vris-stim-component#previous-treatment-continued-until
* component[previousTreatmentContinuedUntil].value[x] 1..1
* component[previousTreatmentContinuedUntil].value[x] only dateTime

* bodySite 0..0
* bodyStructure 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0
* referenceRange 0..0
* hasMember 0..0

* obeys vris-stim-1 and vris-stim-2 and vris-stim-3

Invariant: vris-stim-1
Description: "If ovarian stimulation = false, pre-stimulation treatment, LH suppression and gonadotropin data must not be present. (ee Kui munasarjade stimulatsioon = ei, ei tohi täita stimulatsioonieelse ravi, LH supressiooni ega gonadotropiini andmeid.)"
Severity: #error
Expression: "component.where(code.coding.code = 'ovarian-stimulation').value.ofType(boolean) = false implies component.where(code.coding.code in ('pre-stimulation-treatment' | 'pre-stimulation-treatment-method' | 'lh-suppression' | 'lh-suppression-method' | 'gonadotropin-use')).empty()"

Invariant: vris-stim-2
Description: "A method component may only be present when its corresponding yes/no component is true. (ee Meetodi komponenti tohib täita ainult siis, kui vastav Jah/Ei komponent on true.)"
Severity: #error
Expression: "(component.where(code.coding.code = 'pre-stimulation-treatment-method').exists() implies component.where(code.coding.code = 'pre-stimulation-treatment').value.ofType(boolean) = true) and (component.where(code.coding.code = 'lh-suppression-method').exists() implies component.where(code.coding.code = 'lh-suppression').value.ofType(boolean) = true) and (component.where(code.coding.code = 'final-oocyte-maturation-trigger-method').exists() implies component.where(code.coding.code = 'final-oocyte-maturation-trigger').value.ofType(boolean) = true) and (component.where(code.coding.code = 'luteal-phase-support-method').exists() implies component.where(code.coding.code = 'luteal-phase-support').value.ofType(boolean) = true)"

Invariant: vris-stim-3
Description: "The same method value must not be repeated within a component slice. (ee Sama meetodi väärtust ei tohi komponendi lõikes korrata.)"
Severity: #error
Expression: "component.where(value is CodeableConcept).select(code.coding.code.first() & '|' & value.coding.code.first()).isDistinct()"









