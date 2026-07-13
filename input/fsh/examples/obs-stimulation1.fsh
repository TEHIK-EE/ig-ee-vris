Instance: observation-stimulation-protocol
InstanceOf: EEVRISObservationStimulationProtocol
Usage: #example
Description: "Example of ovarian stimulation protocol for IVF cycle"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol"
* status = #final
* category = $obsCategory#procedure
//* code = $sct#732970000
* subject = Reference(Patient/patientFemale)
* effectiveDateTime = "2025-03-15"
* component[ovarianStimulation].valueBoolean = true
* component[preStimulationTreatment].code.coding.system = $sct
* component[preStimulationTreatment].code.coding.code = #170960008 // |Hormonal replacement therapy: combined estrogen/progestogen (finding)|
* component[preStimulationTreatment].code.coding.display = "ostrogeen ja progestageen"
* component[lhSuppressionProtocol].code.coding.system = $sct
* component[lhSuppressionProtocol].code.coding.code = #TODO
* component[lhSuppressionProtocol].code.coding.display = "Gonadotropiini vabastajahormooni agonistid"
* component[gonadotropinUse].code.coding.system = $sct
* component[gonadotropinUse].code.coding.code = #TODO
* component[gonadotropinUse].code.coding.display = "Inimese gonadotropiin (uFSH)"
* component[finalOocyteMaturationTrigger].code.coding.system = $sct
* component[finalOocyteMaturationTrigger].code.coding.code = #TODO
* component[finalOocyteMaturationTrigger].code.coding.display = "Loomulik ovulatsioon"
* component[lutealPhaseSupport].code.coding.system = $sct
* component[lutealPhaseSupport].code.coding.code = #TODO
* component[lutealPhaseSupport].code.coding.display = "Progesteroon"
* note.text = "Standardne antagonisti protokoll, patsient reageeris hästi."