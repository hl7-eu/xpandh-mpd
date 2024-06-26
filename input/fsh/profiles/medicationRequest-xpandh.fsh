Profile: MedicationRequestXpandh
Parent: MedicationRequest 
Id: MedicationRequest-eu-xpandh
Title: "MedicationRequest: XpanDH"
Description: "This profile defines how to represent MedicationRequest in FHIR for the purpose of the XpanDH project."


* identifier 
  * ^short = "Prescription/prescribed item ID"
  * ^comment = "It is the prescription ID if the presciption includes only one prescribed item"
* status ^short = "Current state of the order"
* intent = $medicationrequest-intent#order 
* medicationReference 1..
* medicationReference only Reference(MedicationEpXpandh)
* subject only Reference( PatientXpandh )
* authoredOn 1..
* requester 1..
* reasonCode ^short = "Reason or indication for this prescription"
* reasonReference ^short = "Condition or observation that supports this prescription"
* groupIdentifier // should we ask to valorize in all the cases ?
  * ^short = "Prescription this is part of"
  * ^comment = "Not needed if a presciption includes only one prescribed item"
* dosageInstruction ^short = "How the medication should be taken."
  * timing ^short = "Administration schedule"
    * repeat
      * duration ^short = "Duration of the treatment"
      * frequency ^short = "Frequency times per period"
      * period ^short = "Duration of time over which repetitions are to occur"
      * periodUnit  ^short = "Unit of the period (e.g. day)"
    * code ^short = "A code for the timing schedule."
  * route ^short = "Route of administration"
  * text ^short = "Free text dosage instructions"
  * doseAndRate.doseQuantity ^short = "Amount of medication per dose"
* dispenseRequest 1..
  * quantity 1..
* substitution.allowedCodeableConcept 1..

