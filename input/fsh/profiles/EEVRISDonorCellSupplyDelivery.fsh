Profile: EEVRISDonorCellSupplyDelivery
Parent: SupplyDelivery
Id: ee-vris-donor-cell-supply-delivery
Title: "Doonori bioloogiline materjali liikumine TTO-sse/sealt välja"
Description: "Anonüümse doonori või mittepartnerannetaja Eestis annetatud bioloogiline materjali (sperma, munarakud, embrüo) liikumine TTO-sse/sealt välja"

* identifier 0..*
* basedOn 0..0   // Reference(SupplyRequest)
* partOf 0..0   // Reference(Contract | SupplyDelivery)
* status 0..1   // code: in-progress | completed | abandoned | entered-in-error
* patient 0..1   // Reference(Patient)
* type 0..1   // CodeableConcept
* suppliedItem 0..0   // BackboneElement
* suppliedItem.quantity 0..1   // Quantity (SimpleQuantity)
* suppliedItem.item[x] 0..1   // CodeableConcept | Reference(...)
* occurrence[x] 0..1   // dateTime | Period | Timing
* supplier 0..1 
* supplier only Reference(Organization)
* destination 0..1 
* destination only Reference(Location)
* receiver 0..0 // Reference(Practitioner | PractitionerRole | Organization)