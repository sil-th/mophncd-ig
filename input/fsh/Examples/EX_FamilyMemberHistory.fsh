Instance: familymemberhistory-father1
InstanceOf: $SD_FamilyMemberHistory_Base
Title: "ตัวอย่าง FamilyMemberHistory: บิดาเสียชีวิตจาก heart attack"
Description: "แสดงตัวอย่างประวัติครอบครัวบิดาเสียชีวิตจาก heart attack"
Usage: #example
* status = #completed
* patient = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* date = "2011-03-18"
* relationship = $CS_HL7_RelationshipType#FTH "father"
* sex = http://hl7.org/fhir/administrative-gender#male "Male"
* condition
  * code = $SCT#315619001 "Myocardial Infarction"
    * text = "Heart Attack"
  * contributedToDeath = true
  * onsetAge = 74 'a' "yr"