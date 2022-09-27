Instance: medicationrequest-opd-amoxicillin
InstanceOf: $SD_MedicationRequest_Base
Title: "ตัวอย่าง MedicationRequest: การสั่งยา Amoxicillin หลังการรับบริการ OPD"
Description: "แสดงการสั่งยา Amoxicillin หลังการรับบริการ OPD"
Usage: #example
* identifier
  * use = #usual
  * type = $CS_TH_IdentifierType#localPresc "รหัสใบสั่งยา ของหน่วยบริการ"
  * system = $CS_TH_LocalDrugCode
  * value = "XXXX"
* status = #completed
* intent = #order
* medicationCodeableConcept
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * text = "Amoxicillin 500 mg"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* encounter = Reference(Encounter/encounter-opd1)
* authoredOn = "2022-01-01T12:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* reasonCode = $SCT#43878008 "Streptococcal pharyngitis"
* note.text = "หมายเหตุเกี่ยวกับการใช้ยา (ถ้ามี)"
* dosageInstruction
  * text = "Take one tablet three times a day"
  * route = $SCT#26643006 "Oral route"