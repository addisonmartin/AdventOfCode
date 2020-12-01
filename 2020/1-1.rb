sum = 2020

def readInputsFromFile(path)
   [
     1721,
     979,
     366,
     299,
     675,
     1456
   ]
 end

inputs = readInputsFromFile('~/Documents/AdventOfCode/2020/day_1_inputs.txt')

for input in inputs
  for other_input in inputs
    
    unless input == other_input
      if input + other_input == sum
        
        puts "#{input * other_input} = #{input} * #{other_input}"
        puts "#{input + other_input} = #{input} + #{other_input}"

      end
    end

  end
end

