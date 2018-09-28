class School 
  
  attr_reader :name, :roster 
  
  
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    @roster[grade] = [] if @roster[grade] == nil 
    
    @roster[grade] << student_name
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.sort.each do |grade, hash|
      @roster[grade] = hash.sort 
    end 
    @roster
    
  end 
end 