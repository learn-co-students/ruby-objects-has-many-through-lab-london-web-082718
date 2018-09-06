class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)

    @name=name

    @@all << self

  end

  def self.all
    @@all
  end

  def appointments
    #  iterate through appointments array`
    Appointment.all.each do |appointment|
      appointment.patient  == self
    end

    # return appointments belonging to specific instance of patient - self

  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    #  iterate over the patient's appointments
    self.appointments.map do |appointment|
      appointment.doctor
    end 
  end



end
