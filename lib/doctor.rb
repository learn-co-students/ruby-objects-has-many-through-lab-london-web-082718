require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end


  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    # iterates over doctor's appoinments
    # - collects the patient which belongs to each appointment
    self.appointments.map do |appointment|
      appointment.patient
      # binding.pry
    end
  end


end
