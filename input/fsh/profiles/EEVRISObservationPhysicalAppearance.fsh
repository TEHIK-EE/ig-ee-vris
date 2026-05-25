Profile: EEVRISObservationPhysicalAppearance
Parent: Observation
Id: ee-vris-observation-physical-appearance
Title: "EE VRIS Physical Appearance Observation"
Description: "Observation profile for recording characteristics of physical appearance of donor. (ee Profiil on mõeldud välimust kirjeldavate karakteristikute jaoks, nt silmade värd, juuste värv, naha värv, kehaehitus.)"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* status = #final
* category 1..* 
* category ^short = "Vaatluse kategooria"
//* category = $obsCategory#laboratory "Laboratory"
* code 1..1 
* code ^short = "Füüsilise välimuse vaatluse kood"
//* code = $Appearance#physical-appearance "Physical Appearance Panel"
* subject 1..1 
* subject only Reference($vris-donor)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "Millal andmed registreeriti"
* value[x] 0..0
* note 
* note ^short = "Kui on midagi vaja veel lisada"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "system"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Sliced by physical appearance characteristic"
* component contains
    eyeColour     0..1 and
    hairColour    0..1 and
    skinColour    0..1 and
    bodyStructure 0..1
* component[eyeColour] ^short = "Silmade värvus"
//* component[eyeColour].code 1..1
//* component[eyeColour].code = $AppearanceCS#eye-colour
* component[eyeColour].value[x] 1..1
* component[eyeColour].value[x] only CodeableConcept
* component[eyeColour].value[x] from $eye (required)
* component[hairColour] ^short = "Juuste värvus"
//* component[hairColour].code 1..1
//* component[hairColour].code = $AppearanceCS#hair-colour
* component[hairColour].value[x] 1..1
* component[hairColour].value[x] only CodeableConcept
* component[hairColour].value[x] from $hair (required)
* component[skinColour] ^short = "Naha värvus"
* component[skinColour].code 1..1
//* component[skinColour].code = $AppearanceCS#skin-colour
//* component[skinColour].value[x] 1..1
* component[skinColour].value[x] only CodeableConcept
* component[skinColour].value[x] from $skin (required)
* component[bodyStructure] ^short = "Kehaehitus"
* component[bodyStructure].code 1..1
//* component[bodyStructure].code = $AppearanceCS#body-structure
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