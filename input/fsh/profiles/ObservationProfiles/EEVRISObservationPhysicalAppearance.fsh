Profile: EEVRISObservationPhysicalAppearance
Parent: Observation
Id: ee-vris-observation-physical-appearance
Title: "Observation: EE VRIS Physical Appearance"
Description: "Observation profile for recording characteristics of physical appearance of donor. (ee Profiil on mõeldud välimust kirjeldavate karakteristikute jaoks, nt silmade värd, juuste värv, naha värv, kehaehitus.)"
* status = #final
* category ^short = "Vaatluse kategooria"
* code 1..1 
* code ^short = "Füüsilise välimuse vaatluse SCT kood"
* code = $sct#703248002 //|Appearance (observable entity)|
* subject 1..1 
* subject only Reference($vris-donor or EEVRISDonorAnonymous or EEVRISRecipient or $mpi-patient)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal andmed registreeriti)"
* value[x] 0..0
* note 
* note ^short = "(ee Kui on midagi vaja veel lisada)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "system"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Sliced by physical appearance characteristic. (ee NB! Loendi viited ja koodid EI OLE lõplikud!)"
* component contains
    eyecolor     0..1 and
    haircolor    0..1 and
    skincolor    0..1 and
    bodyStructure 0..1
* component[eyecolor] ^short = "Silmade värvus"
//* component[eyecolor].code 1..1
* component[eyecolor].code = $sct#247030006
* component[eyecolor].value[x] 1..1
* component[eyecolor].value[x] only CodeableConcept
* component[eyecolor].value[x] from $eye (required)
* component[haircolor] ^short = "Juuste värvus"
//* component[haircolor].code 1..1
* component[haircolor].code = $sct#80040005
* component[haircolor].value[x] 1..1
* component[haircolor].value[x] only CodeableConcept
* component[haircolor].value[x] from $hair (required)
* component[skincolor] ^short = "Naha värvus"
* component[skincolor].code 1..1
* component[skincolor].code = $sct#364533002
//* component[skincolor].value[x] 1..1
* component[skincolor].value[x] only CodeableConcept
* component[skincolor].value[x] from $skin (required)
* component[bodyStructure] ^short = "Kehaehitus"
* component[bodyStructure].code 1..1
* component[bodyStructure].code = $sct#366209005
//* component[bodyStructure].value[x] 1..1
* component[bodyStructure].value[x] only CodeableConcept
* component[bodyStructure].value[x] from $body (required)
* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0