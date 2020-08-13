class Doctor 
  
  attr_accessor :name # initializes with name 
  
  @@all = []
  
  def initialize(name)  # initializes with name and self adding to class variable array
    @name = name 
    @@all <<  self
  end
  
  def self.all #class method to add objects to class variable array
    @@all
  end
  
  def new_appointment(date, patient) 
    Appointment.new(date, patient, self) #creates new app with the arg given in the App class
  end
  
  def appointments
    Appointment.all.select {|app| app.doctor ==self} 
  end
  
  def patients
    appointments.map {|apps| apps.patient}
  end
  
end