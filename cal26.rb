def twentysixToTen(num_26, i)
    num_10 = 0
    m = 0
    while i > 0 do
        l = 0
        for str in "A".."Z" do
            if str == num_26[m]
                num_10 += l * (26**(i-1)) 
                m += 1
                break
            end
            l += 1
        end
        i -= 1
    end    
    return num_10
end

def tenToTwentysix(l)
    m = 0
    output = ""
    while l > 0 do
        i = 0
        amari = l % 26
        l = l / 26
    
        for str in "A".."Z" do
            if i == amari
                output[m] = str
                m += 1
                break
            end
            i += 1
        end
    end
    return output.reverse
end

#Main
puts"Input your formula...(X * Y)"
num1_26, operator, num2_26 = gets.split(' ')

digit_26_1 = num1_26.length
digit_26_2 = num2_26.length

num1_10 = twentysixToTen(num1_26, digit_26_1)
num2_10 = twentysixToTen(num2_26, digit_26_2)

answer_10 = num1_10 * num2_10
answer_26 =  tenToTwentysix(answer_10)    

puts "(#{num1_26})_26: (#{num1_10})_10"
puts "(#{num2_26})_26: (#{num2_10})_10"
puts "answer_10: (#{answer_10})_10"
puts "answer_26: (#{answer_26})_26"



######RESULT#######
#Input your formula...(X * Y)
#YES * NO
#(YES)_26: (16346)_10
#(NO)_26: (352)_10
#answer_10: (5753792)_10
#answer_26: (MPJNS)_26