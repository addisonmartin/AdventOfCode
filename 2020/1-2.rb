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
    for final_input in inputs

      unless input == other_input or input == final_input or other_input == final_input
        unless input == 0 or other_input == 0 or final_input == 0
          if input + other_input + final_input == sum
            puts "#{input * other_input * final_input} = #{input} * #{other_input} * #{final_input}"
            puts "#{input + other_input + final_input} = #{input} + #{other_input} + #{final_input}"
          end
        end
      end

    end
  end
end
    
