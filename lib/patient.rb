class Patient
   attr_accessor :name

   def initialize(name)
     @name = name
   end

   def appointments
     Appointment.all {|appointment| appointment.patient == self}
   end

   def doctors
     appointments.collect {|appointment| appointment.doctor}
   end

   def new_appointment(doctor, date)
     Appointment.new(self, doctor, date)
   end

end
