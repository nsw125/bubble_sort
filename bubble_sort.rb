def bubble_sort(array)
    array.length.times do
        array.each_with_index do |number, index|
            test_num = array[index + 1]
            case number <=> test_num
                when 1
                    array[index], array[index + 1] = array[index + 1], array[index]
                    #puts array.join(' ')  #Shows after each swap
                end
            #puts array.join(' ') #shows after each round
        end
    end
    puts array.join(' ')
end

def bubble_sort_by(array)

    array.length.times do
        array.each_index do |index| 
            if array[index + 1].is_a? String and yield(array[index], array[index + 1]) > 0
                array[index], array[index + 1] = array[index + 1], array[index]
                #puts array.join(' ') #shows after each round
            end
        end
    end
    puts array.join(' ')
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left, right| 
    left.length - right.length
end

