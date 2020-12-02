sum = 2020

def readInputsFromFile(path)
  raw_inputs = []

  File.readlines(path).each do |line|
    raw_inputs << line.chomp.to_i
  end

  raw_inputs
end

inputs = readInputsFromFile('day_1_inputs.txt')

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

