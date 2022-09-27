Instance: appointment-opd1
InstanceOf: $SD_Appointment_Base
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการ OPD"
Description: "แสดงการนัดติดตามผลหลังรับบริการ OPD"
Usage: #example
* status = #booked
* reasonCode[0]
  * coding[0] = $SCT#386661006 "Fever"
  * coding[+] = $ICD10#R50.9 "Fever, unspecified"
  * text = "นัดติดตามอาการไข้"
* description = "นัดมาติดตามอาการไข้ 7 วันหลังตรวจ"
* start = "2022-01-08T08:30:00+07:00"
// Need both start and end in the constraint
* end = "2022-01-08T09:00:00+07:00"
* created = "2022-01-01T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
    * type = "Patient"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
    * type = "Practitioner"
  * status = #accepted
* participant[+]
  * actor
    * type = "Location"
    * display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted
    