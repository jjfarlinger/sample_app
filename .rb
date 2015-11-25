#1.
#By replacing the question marks with appropriate methods, 
#combine split, shuffle an join to write a function that shuffles 
#the letters in a given string.
def string_shuffle(s)
  s.split('').shuffle.join('')
end

puts string_shuffle("foobar")

#2. Add a shuffle method to the String class
class String
  def shuffle
    self.split('').shuffle.join('')
  end
end

puts "foobar".shuffle

#3. Create three hashes called person1, person2, and person3 with first and last names under the keys :first and :last.
#Then create a params hash so that params[:father] is person1, params[:mother] is person2 and params[:child] is person3.
#Verify the params have the right values.

person1 = {:first => 'Fred', :last => 'Flintstone'}
person2 = {:first => 'Wilma', :last => 'Flintstone'}
person3 = {:first => 'Pebbles', :last => 'Flintstone'}

params = {
 :father => person1,
 :mother => person2,
 :child  => person3
}
puts params[:father][:first]
puts params[:mother][:first]
puts params[:child][:first]

#4. Find an online version of the Ruby API and read about the Hash method merge. What is the value of the following expressiong:
def hash 
  {"a" => 100, "b" => 200 }.merge({"b" => 300 })
end

puts hash()

