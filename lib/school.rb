class School
  attr_accessor :name, :roster
 
 
  def initialize(name)
    @name = name
    @roster={}
  end
  
 def add_student(name,grade)
   
   if @roster.keys.include?(grade)
     @roster[grade]<<name 
   else 
   @roster[grade]=[name]
   end
   
 end 

def grade(number)
return @roster[number]
end

def sort 

my_keys=@roster.keys

my_keys.each{|k | @roster[k]= @roster[k].sort}

@roster


end

 
end