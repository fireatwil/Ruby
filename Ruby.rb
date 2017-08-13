first_name = "prashant"
gets.chomp
puts first_name.capitalize!
print first_name.capitalize!
gets.chomp.capitalize!

#parameterise
print "Your name is #{first_name} #{last_name}. You are from #{city} #{state} "


sum = 2+5 #-> 7
diff = 5-2 #-> 3
multiply = 2*5 #-> 10
division = 10/2 #-> 5
exponentiation = 2**3 #-> 2*2*2 -> 8
#3**2 -> 3*3 -> 9
modulo = 5%2 #-> 1

first_name.length
first_name.reverse

#for commenting any line, use hash sign '#'
#for commenting block, use '=begin' and '=end'
=begin
name = "Prashant"
=end


first_name.upcase
first_name.downcase
print first_name

puts "Enter Integers: "
num1 = Integer(gets.chomp)
num2 = Integer(gets.chomp)

if num1 < num2
  print "#{num1} is lesser than #{num2}"
elsif num1 > num2
  print "#{num1} is greater than #{num2}"
else
  print "#{num1} is equal to #{num2}"
end

true && true #-> true
true || false #-> true
!true #-> false

if (2==2)
  print "its true"
end


hungry = true
unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

#check user_input contains substring
if user_input.include? "substring"
end

print "Provide input: "
user_input = gets.chomp.downcase! #if using downcase, atleast one capital letter should be present while providing input

if user_input.include? "s"
  user_input.gsub!(/s/, "th") #gsub -> Global substitution (replace the substring)
  print "replace s"
end


#the 'while' loop
counter = 1
while counter < 11
  puts counter
  counter += 1
end

#the 'until' loop
counter = 1
until counter > 10
  puts counter
  counter += 1
end

#the 'for' loop
for num in 1...10  # if 3 dots, it excludes 10 (excludes higher number in range)
  puts num
end

for num in 1..10  # if 2 dots, it includes 10 (includes higher number in range)
  puts num
end

#the 'loop'
num = 20
loop do
  num -= 1
  puts num
  break if num <=0
end

#the 'next' iterator
num = 20
loop do
  num -= 1
  next if num%2 != 0
  print num
  break if num <= 0
end

for num in 1..5
  next if num % 2 != 0
  puts num
end

# array
array = [1, 2, 3, 4, 5]

#the '.each' iterator
array = [1, 2, 3, 4, 5]
array.each do |x|
  x += 10
  puts x
end

array.each { |x|
  x += 10
  puts x
}

#the '.times' iterator
5.times {
  puts "Kalia is amazing and amazing is Prashant"
}

#the 'while' loop
num = 0
while num <= 49 do
  num += 1
  print num
end

#the 'until' loop
num = 0
until num >= 50
  num += 1
  print num
end

#the 'for' loop
num = 1
for num in 1..50
  print num
  num += 1
end

#the '.split' method
words = text.split(",")

#REDACTED
puts "Enter the text to search through: "
text = gets.chomp
puts "Enter the word to be redacted: "
redact = gets.chomp

words = text.split(" ")
words.each {
  |word|
  if word.downcase != redact.downcase # if we want to replace word irrespective of uppercase or lowercase
    print word + " "
  else
    print "REDACTED "
  end
}

#access by index
array = [1, 2, 3, 4, 5]
print array[2] #output will be 3
# array[i] for getting value at index i



#multi-dimensional array
my_2d_array = [[1,2,3],["a",'v','pop']]
my_2d_array.each do |x|
  print "#{x}\n"
end

#Hashes
my_hash = {
  "name" => "Kalia",
  "age" => 27,
  "hungry?" => false
}
puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

new_hash = Hash.new
new_hash["name"] = "Piyush"
puts new_hash["name"]

#other way
new_hash = Hash.new
new_hash = {
  "name" => "Piyush",
  "style" => "dudish",
  "gf" => 5
}
puts new_hash["gf"]

#each iterator for Hash
new_hash.each {|x, y| print "#{x}: #{y}"}

#input:
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

#output:
s.each {
  |sub_array|
  sub_array.each {
    |element|
    puts "#{element}"
    }
  }

#Create a histogram
puts "Enter the text: "
text = gets.chomp

words = text.split(" ")
freq = Hash.new(0)
words.each do |word|
  freq[word] += 1
end
freq = freq.sort_by do |word, count|   # sort the freq based on count (sorting is ascending order)
  count
end
freq.reverse! # reverse the sorting order
freq.each do |word, count|
  puts word + " " + count.to_s
end

#Methods, blocks and sorting
