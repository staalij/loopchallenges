def listgen
    x = 10
    sorted = 0
    nums = []

    x.times do |i|
        r = rand(0..10).round(1)
        nums.push(r)
        sorted = nums.sort
    end

    return sorted
end



def median(list)
    i = 0
    j = 0
    newlist = list.sort
    while i < list.length
        if newlist.length % 2 == 1
            middle = newlist.length / 2
            median = newlist[middle]
        elsif newlist.length % 2 == 0
            i = (newlist.length / 2) - 1
            j = i + 1
            median = (newlist[i] + newlist[j]) / 2
        end
        i = i + 1
    return median
    end
end

def mode(list)
    #appears most often
    i = 0
    j = 0
    count1 = 0
    count2 = 0
    k = 0
    while k < list.length
        while j < list.length
            if list[i] == list[j]
                count1 = count1 + 1
                place = i
                puts count1
            end
            j = j + 1
        end

        j = 0
        i = i + 1

        while j < list.length
            if list[i] == list[j]
                count2 = count2 + 1
                place = i
            end
            j = j + 1
        end

        if count1 > count2
            count1 = count1
            count2 = 0
        else
            count2 = count1
            count2 = 0
        end

        # USE LIST.EACH


        result = "The number that appears the most is #{place}"
        puts result
        k = k + 1
    end
end


#def standarddeviation(list)
#    i = 0
#    mean = 
#
#
list = listgen
#puts median(list)
mode(list)

print list