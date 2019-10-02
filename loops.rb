def countts(paragraph)
    i = 0
    tcount = 0
    while i <= paragraph.length
        if paragraph[i] == "t"
            tcount = tcount + 1
        end
        i = i + 1
    end
    return tcount
end

#paragraph = "This is a paragraph that I am currently typing."
#g = countts(paragraph)

#puts g

def countevens(list)
    i = 0
    evens = 0

    while i < list.length
        if list[i] % 2 == 0
            evens = evens + 1
        end
        i = i + 1
    end
    return evens
end

#list =[4,3,3,8,12,3,2]
#e = countevens(list)

#puts e


def maximum(list)
    i = 0
    max = list[0]
    current = list[i]
    while i < list.length
    current = list[i]
    i = i + 1
        if current > max
            max = current
        end
    end
    return max
end
#list = [1,3,3,4,2,5,2]
#max = maximum(list)
#puts max

def meaner(list)
    sum = 0
    i = 0
    high = list[0]
    low = list[0]
    while i < list.length
        sum = sum + list[i]
        if low > list[i]
            low = list[i]
        end
        if high < list[i]
            high = list[i]
        end
        excluded = (sum - high - low) / (list.length - 2)
        i = i + 1
    end
    puts excluded
end

#list=[1,5,4,2,3,3,7,2]
#mean = meaner(list)
#puts mean


def no1(list,excluded)
    i = 0
    while i < list.length
        if list[i] == 1 || list[i] == excluded
            okay = false
            i = list.length + 1
        else
            okay = true
        end
        i = i + 1
    end
    if okay == true
        puts "This list does not have any 1's or #{excluded}'s in it"
    else
        puts "This list has either a 1 or a #{excluded} in it"
    end
end

#puts no1([1,3,1,23,5,4,2,3],0)
#puts no1([3,2,2,4,5,8,2,3,5],9)

def tacocat(word)
    i = 0
    j = word.length - 1

    while i < word.length
        if word[i] != word[j]
            palendrome = false
        end
        i = i + 1
        j = j - 1
    end

    if palendrome == false
        puts "#{word} is not a palendrome"
    else
        puts "#{word} is a palendrome"
    end
end

#puts tacocat("racecar")
#puts tacocat("tacocat")
#puts tacocat("dad")

def tacocatcount(sentence)
    i = 0
    k = 0
    j = 0
    palcount = 0

    while i < sentence.length

        if  sentence[i] == " "
            j = i
            k = i + 1

            while sentence[k] != " "
                k = k + 1
                puts sentence[k]
            end

            while k != i

                if sentence[k] != sentence[j]
                    palendrome = false
                    palcount = palcount
                else
                    palcount = palcount + 1
                end
                k = k - 1
                j = j + 1

            end
        end
        i = i + 1
    end
    return palcount
end

asdf = tacocatcount("the tacocat had a dad who drove a racecar")
puts asdf