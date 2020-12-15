require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self 
  end

  def self.create_from_collection(students_array)
    binding.pry
    Student.new = students_array.each do |s| 
      s.name = students_array[0]
      s.location = students_array[1]
    end 
      
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end
end

