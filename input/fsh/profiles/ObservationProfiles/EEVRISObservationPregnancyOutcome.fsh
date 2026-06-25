Profile: EEVRISObservationPregnancyOutcome
Parent: Observation
Id: ee-vris-observation-pregnancy-outcome
Title: "Observation: EE VRIS Pregnancy Outcome"
Description: "Pregnancy outcome including delivery, miscarriage, abortion details. (ee Raseduse lõpe sünnitus, katkemine või katkestamine koos detailidega.)"
* ^status = #draft
* ^version = "0.1.0"

* status = #final
* category 0..*
* category = $obsCategory#exam
* code 1..1
* code = $sct#364320009 // |Pregnancy observable (observable entity)|                         
* code ^short = "(ee Raseduse lõppemise kood)"
* subject 1..1
* subject only Reference(EEVRISRecipient)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Raseduse lõppemise hindamise aeg)"

* value[x] 1..1
* value[x] only CodeableConcept
//* valueCodeableConcept from $vris-pregnancy-outcome-VS (required)
* valueCodeableConcept ^short = "(ee Raseduse lõpe, sünnitus / katkemine / katkestamine vms)"

* derivedFrom 0..*
* derivedFrom ^short = "(ee Viide Sünniepikriisile? Episode of Care?)"
* focus 0..*
* focus ^short = "(ee Viide raseduse Condition profiilile)"
* note 0..*

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    terminationType 0..1 and
    indication 0..1 and
    terminationDate 0..1 and
    deliveryDate 0..1 and
    gestationalAgeWeeks 0..1 and    
    liveBirthsCount 0..1 and           // UUS
    stillbirthsCount 0..1 and          // UUS
    placentationType 0..1 and          // UUS
    deliveryMethod 0..1                // UUS

* component[terminationType] ^short = "(ee Raseduse katkemise/katkestamise liik)"
* component[terminationType].code = $sct#363681007 // |Pregnancy with abortive outcome (disorder)|
* component[terminationType].value[x] only CodeableConcept
//* component[terminationType].valueCodeableConcept from $vris-pregnancy-termination-type-VS (required)

* component[indication] ^short = "(ee Näidustus, vabatekst)"
* component[indication].code = $sct#432678004 // |Indication for procedure (observable entity)|
* component[indication].value[x] only string

* component[terminationDate] ^short = "(ee Raseduse katkemise/katkestamise kuupäev)"
* component[terminationDate].code = $sct#439272007 //|Date of procedure (observable entity)|
* component[terminationDate].value[x] only dateTime

* component[deliveryDate] ^short = "(ee Sünnituse kuupäev)"
* component[deliveryDate].code = $sct#161714006 // |Estimated date of delivery (observable entity)|
* component[deliveryDate].value[x] only dateTime

* component[gestationalAgeWeeks] ^short = "(ee Raseduskestus sünnituse hetkel, nädalates)"
* component[gestationalAgeWeeks].code = $sct#364739001 //|Finding of fetal gestation at delivery (finding)|
* component[gestationalAgeWeeks].value[x] only Quantity
* component[gestationalAgeWeeks].valueQuantity.unit = "wk"
* component[gestationalAgeWeeks].valueQuantity.system = $ucum
* component[gestationalAgeWeeks].valueQuantity.code = #wk

* component[liveBirthsCount] ^short = "(ee Sündinud laste arv)"
* component[liveBirthsCount].code = $sct#248991006 //|Number of live deliveries (observable entity)|     
* component[liveBirthsCount].value[x] only integer

* component[stillbirthsCount] ^short = "(ee Surnult sündinud laste arv)"
* component[stillbirthsCount].code = $sct#252112002 //|Number of stillbirths (observable entity)|
* component[stillbirthsCount].value[x] only integer

* component[placentationType] ^short = "(ee Platsentatsiooni tüüp mitmikel)"
* component[placentationType].code = $sct#16356006 // |Multiple pregnancy (finding)|     
* component[placentationType].value[x] only CodeableConcept
//* component[placentationType].valueCodeableConcept from $vris-placentation-type-VS (required)

* component[deliveryMethod] ^short = "(ee Sünnitusviis)"
* component[deliveryMethod].code = $sct#118215003 //|Delivery finding (finding)|        
* component[deliveryMethod].value[x] only CodeableConcept
//* component[deliveryMethod].valueCodeableConcept from $vris-delivery-method-VS (required)
// Invariandid – UI loogika valideerimine
* obeys vris-preg-outcome-1
* obeys vris-preg-outcome-2
* obeys vris-preg-outcome-3

* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0

Invariant: vris-preg-outcome-1
Description: "If outcome is delivery, then terminationType must NOT be present"
Severity: #error
Expression: "value.coding.where(code='delivery').exists() 
             implies component.where(code.coding.code='termination-type').empty()"

Invariant: vris-preg-outcome-2
Description: "If outcome is delivery, then deliveryDate and gestationalAgeWeeks should be present"
Severity: #warning
Expression: "value.coding.where(code='delivery').exists() 
             implies component.where(code.coding.code='delivery-date').exists()"

Invariant: vris-preg-outcome-3
Description: "If terminationType is medical or other-specified, indication must be present"
Severity: #error
Expression: "component.where(code.coding.code='termination-type' and 
             value.coding.code in ('medical-indication' | 'other-specified')).exists() 
             implies component.where(code.coding.code='indication').exists()"