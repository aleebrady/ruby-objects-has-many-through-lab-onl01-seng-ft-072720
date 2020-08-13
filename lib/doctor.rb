class Doctor 
  
  attr_accessor :name # initializes with name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all <<  self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|app| app.doctor ==self} 
  end
  
  def patients
    appointments.map {|apps| apps.patient}
  end
  
end