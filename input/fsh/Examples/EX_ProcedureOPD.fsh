Instance: procedure-opd1
InstanceOf: $SD_Procedure_Base
Title: "ตัวอย่าง Procedure: หัตถการ ณ OPD"
Description: "หัตถการ ณ OPD"
Usage: #example
* status = #completed
* code
  * coding[0] = $SCT#225358003 "Wound care"
  * coding[+] = $ICD9CM#93.57 "Application of other wound dressing"
  * text = "Wound care"
* subject = Reference(Patient/patient-patient1)
* performedPeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T12:40:02+07:00"
* performer[0]
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * onBehalfOf = Reference(Organization/organization-main)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* location
  * display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* outcome
  * coding[0] = $SCT#830130002 "Wound healing well"
  * text = "แผลดีขึ้น"

