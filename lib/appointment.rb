class Appointment
  attr_reader :title, :doctor, :patient
  @@all = []
  def initialize(title, doctor, patient)
    @title = title
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  def self.all
    @@all
  end
end