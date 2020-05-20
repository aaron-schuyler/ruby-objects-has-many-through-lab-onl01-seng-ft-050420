class Patient
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def appointments 
    Appointment.all.select{|appointment| appointment.patient == self}
  end
  def qqs 
    self.appointments.collect{|appointment| appointment.qq}.uniq
  end 
  def new_appointment(name, qq)
    Appointment.new(name, self, qq)
  end
  def self.all
    @@all
  end
end