require 'pry'

require_relative 'doctor'
require_relative 'appointment'
require_relative 'patient'


doctor_who = Doctor.new("The Doctor")
doctor_2 = Doctor.new("The Second Doctor")
hevydevy = Patient.new("Devin Townsend")
patient_2 = Patient.new("Patient 2")

doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
appointment = doctor_who.new_appointment(hevydevy, "Saturday, January 33rd")
doctor_who.new_appointment(hevydevy, "Rootenskadootenday, January 315th")


binding.pry
p 'EOF'
