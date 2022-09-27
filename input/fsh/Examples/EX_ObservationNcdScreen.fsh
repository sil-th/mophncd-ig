// Social History

Instance: observation-ncd-smoking1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: ประวัติสูบบุหรี่"
Description: "ประวัติสูบบุหรี่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[0] = $LNC#72166-2 "Tobacco smoking status"
  * text = "Tobacco smoking status"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdSmoking#1 "ไม่สูบ"



Instance: observation-ncd-alcohol1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: ประวัติดื่มเครื่องดื่มแอลกอฮอลล์"
Description: "ประวัติดื่มเครื่องดื่มแอลกอฮอลล์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[0]  = $LNC#74013-4 "Alcoholic drinks per day"
  * text = "Alcoholic drinks per day"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdAlcohol#2 "ดื่มนานๆครั้ง (ดื่ม 1-3 วัน/เดือน หรือ ดื่ม 1-11 วัน/ปี)"


Instance: observation-ncd-dm-fam1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: ประวัติเบาหวานในญาติสายตรง"
Description: "ประวัติเบาหวานในญาติสายตรง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[0]  = $LNC#97063-2 "Family history of Diabetes"
  * text = "Family history of Diabetes"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"


Instance: observation-ncd-ht-fam1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: ประวัติความดันสูงในญาติสายตรง"
Description: "ประวัติความดันสูงในญาติสายตรง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[0]  = $SCT#160357008 "Family history of hypertension"
  * text = "Family history of hypertension"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"




// FBS and method

Instance: observation-ncd-fbs
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: การตรวจระดับน้ำตาลในเลือด"
Description: "การตรวจระดับน้ำตาลในเลือด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[loinc] = $LNC#1558-6 "Fasting glucose [Mass/volume] in Serum or Plasma"
  * coding[tmlt] = $CS_TMLT#320291 "Fasting glucose [mg/dL] in Serum or Plasma"
  * text = "Fasting glucose [mg/dL] in Serum or Plasma"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* interpretation
  * coding[0] = $CS_HL7_ObsInterpret#N "Normal"
  * text = "Normal"
* valueQuantity = 140 'mg/dL' "mg/dL"
* method = $CS_THCC_NcdFbsMethod#2 "ตรวจน้ำตาลในเลือด จากหลอดเลือดดำ โดยไม่อดอาหาร"




Instance: observation-ncd-gest-dm1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: มีประวัติเป็นเบาหวานขณะตั้งครรภ์"
Description: "มีประวัติเป็นเบาหวานขณะตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0]  = $SCT#472971004 "History of gestational diabetes mellitus"
  * text = "History of gestational diabetes mellitus"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"



Instance: observation-ncd-foot1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: การตรวจเท้า"
Description: "การตรวจเท้า"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0]  = $SCT#394683006 "Diabetic foot risk assessment"
  * text = "Diabetic foot risk assessment"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdFootExam#1 "ตรวจ ผลปกติ"


Instance: observation-ncd-retina1
InstanceOf: $SD_Observation_Base
Title: "ตัวอย่าง Observation: การตรวจจอประสาทตา"
Description: "การตรวจจอประสาทตา"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0]  = $SCT#134395001 "Diabetic retinopathy screening"
  * text = "Diabetic retinopathy screening"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_NcdRetinaExam#1 "ตรวจ opthalmoscope ผลปกติ"
