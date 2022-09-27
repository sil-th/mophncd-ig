Instance: condition-opd2-main
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: การวินิจฉัยโรคหลัก ในบริการ OPD"
Description: "การวินิจฉัยโรคหลัก ในบริการ OPD"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#43878008 "Streptococcal pharyngitis"
  * coding[+] = $ICD10#J02.0 "Streptococcal pharyngitis"
  * text = "Streptococcal pharyngitis"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* onsetDateTime = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"


Instance: condition-opd2-comorbid
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: การวินิจฉัยโรคร่วม ในบริการ OPD"
Description: "การวินิจฉัยโรคร่วม ในบริการ OPD"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#73211009 "Diabetes mellitus"
  * coding[+] = $ICD10#E14.9 "Unspecified diabetes mellitus : Without complications"
  * text = "Diabetes mellitus"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* onsetDateTime = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"



Instance: condition-opd2-pasthx
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: ประวัติการเจ็บป่วยในอดีต"
Description: "ประวัติการเจ็บป่วยในอดีต"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#429699009 "History of malignant neoplasm of colon"
  * coding[+] = $ICD10#Z85.0 "Personal history of malignant neoplasm of digestive organs"
  * text = "History of CA colon"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* onsetDateTime = "2014-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"
