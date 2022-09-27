Profile: MophPcAppointmentBase
Parent: Appointment
Id: mophncd-appointment-base
Title: "MoPH-NCD Appointment"
Description: "ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ"
* ^url = $SD_Appointment_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status ^short = "สถานะการนัด (มองจากฝั่งต้นทางการนัด)"
* serviceCategory ^short = "บริการที่นัดรับ"
* reasonCode ^short = "รหัสโรคหรือกิจกรรมที่นัด"
* start MS
* start ^short = "วัน-เวลาที่นัดมารับบริการ"
* patientInstruction ^short = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* created ^short = "วัน-เวลาที่สร้างนัดนี้"
* comment ^short = "รายละเอียดอื่น ๆ เพิ่มเติมเกี่ยวกับการนัด"
* participant MS
* participant.actor.type 1..1 MS
// Slice by value because not all slice can reference
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant contains
    patient 1..1 MS and
    practitioner 0..* MS and
    location 0..* MS
* participant[patient].actor only Reference($SD_Patient_Base)
* participant[patient].actor.type MS
* participant[patient].actor.type = "Patient" (exactly)
* participant[patient].actor.identifier MS
* participant[patient].actor.identifier ^short = "รหัสประจำตัวผู้ป่วย"
* participant[practitioner] ^short = "ผู้ให้บริการ ที่นัดไปพบ"
* participant[practitioner].actor only Reference($SD_Practitioner_Base)
* participant[practitioner].actor.type MS
* participant[practitioner].actor.type = "Practitioner" (exactly)
* participant[practitioner].actor.identifier MS
* participant[practitioner].actor.identifier ^short = "รหัสประจำตัวผู้ให้บริการ"
* participant[location] ^short = "ชื่อคลีนิค หรือห้องตรวจที่นัดรับบริการ"
* participant[location].actor.type MS
* participant[location].actor.type = "Location" (exactly)
* participant[location].actor.identifier MS
* participant[location].actor.identifier ^short = "รหัสคลินิก หรือห้องตรวจ"
