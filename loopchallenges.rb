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
    while i < list.length
        if list.length % 2 == 1
            median = list[list.length / 2.0]
        elsif list.length % 2 == 0
            i = list.length / 2 - 1
            j = i + 1
            median = (list[i] + list[j]) / 2.00
        end
        i = i + 1
    return median
    end
end

list = listgen
#puts median(list)
#print list

def starts_with(list,number)
    if list[0] == number
        return true
    else
        return false
    end
end

#puts starts_with([1,3,4,2],1)
#puts starts_with([1,3,4,2],2)

def avg(list)
    total = 0
    list.each do |n|
        total += n
    end
    return total / list.size.to_f
end

#puts avg(list)

def count(list,number)
    c = 0
    list.each do |n|
        if n == number
            c += 1
        end
    end
    return c
end

#puts count([1,1,1],1)
#puts count([1,1,1],2)
#puts count([1,2,2],2)


def std_dev(list)
    total = 0
    list.each do |n|
        total += n
    end
    avg = total / list.size.to_f
    sum_squares = 0
    list.each do |n|
        sum_squares += (n - avg) * (n - avg)
    end
    return Math.sqrt(sum_squares / list.size - 1)
end

#puts std_dev(list)

def mode(list)
    max = 0
    mode = list[0]
    list.each do |n|
        count = 0
        list.each do |m|
            if m == n
                count += 1
            end
        end
        if count > max
            max = count
            mode = n
        end
    end
    return mode
end

#puts mode(list)

def is_increasing?(list)
    i = 0
    while i < list.length - 1
        if list[i] < list[i+1]
            increasing = true
        else
            return false
        end
        i = i + 1
    end
    return increasing
end

#puts is_increasing?([1,2,3])
#puts is_increasing?([3,2,1])
#puts is_increasing?([1,1,1])
#puts is_increasing?([1,3,4,6])

def num_cats(str)
    cats = 0
    (str.size - 2).times do |i|
        slice = str[i..(i+2)]
        if slice == "cat"
            cats += 1
        end
    end
    return cats
end

#puts num_cats("cats are great because cats are nice. I like cats")
#puts num_cats("No")
#puts num_cats("dogcat")

def threed(list)
    num3 = 0

    (list.length).times do |i|

        if i < list.length
            if list[i] == 3
                num3 += 1
            end
            if list[i] == 3 && list[i+1] == 3
                return false
            end
        elsif i + 1 == list.length
            i += 1
            if list[i] == 3 
                num3 += 1
            end
            if list[i] ==3 && list[i-1] == 3
                return false
            end
        end

    end
    if num3 != 3
        return false
    else
        return true
    end
end

#puts threed([1,3,4,4,3,5,3])
#puts threed([3,3,1,4,2,3,4])
#puts threed([1,1,1,3,5,2,3])
#puts threed([3,1,1,3,1,1,3])

def same_firstlast(list)
    last = list.length - 1
    if list[0] == list[last] && list.length > 0
        return true
    else
        return false
    end
end
#puts same_firstlast([1,3,4,2,1])
#puts same_firstlast([1,2,3,4,5,6])
#puts same_firstlast([])
#puts same_firstlast([5,5,5,5,5])


def sandwich(str)
    i = 0
    j = 0
    bread1 = 0
    bread2 = 0
    breadcount = 0
    while i < str.size - 4
        (str.length).times do
            slice = str[i..(i+4)]        
            if slice == "bread" && breadcount == 0
                breadcount += 1
                bread1 = i + 5
            end
            i = i + 1
            slice = str[i..(i+4)]
            if breadcount == 1 && slice == "bread"
                breadcount += 1
                j = i - 1
                bread2 = j
            end
        end
        if breadcount < 2
            enough = false
        elsif breadcount > 2
            toomuch = true
        end
        i = i + 1
    end
    if enough == false
        puts "ERROR: NOT ENOUGH BREAD, YOU HAVE #{breadcount} SLICES."
    elsif toomuch == true
        puts "ERROR: TOO MANY SLICES, YOU HAVE #{breadcount} SLICES."
    elsif enough != false && toomuch != true
        return str[bread1..bread2]
    end
end
#puts sandwich("breadjambread")
#puts sandwich("breadjelly peanut butter bread")
#puts sandwich("breadjelly")
#puts sandwich("breadjambreadbread")

def leftshift(list)
    shifted = []
    i = 0
    j = list.length - 1
    shifted.push(list[j],list[(i+1)..(j-1)],list[i])
    return shifted
end

#print leftshift([1,3,3,5,2,3,4])

def balanced(list)
    sumleft = 0
    sumright = 0
    i = 0
    while i < list.length - 1
        sumleft = list[0..i].sum
        sumright = list[i+1..].sum
        if sumleft == sumright
            canbebalanced = true
        end
        i += 1
    end
    if canbebalanced != true
        return false
    else
        return true
    end
end
    

#puts balanced([1,2,2,3,3,2,2,1])
#puts balanced([1,3,4,4,2,5])
#puts balanced([12,6,4,2])
#puts balanced([12,12,12,12,12,60])


def co_ecount(str)
    times = 0
    (str.length - 3).times do |i|
        if str[i] == "c" && str[i+1] == "o" && str[i+3] == "e"
            times += 1
        end
    end
    return times
end

#puts co_ecount("codecoeeco ecope")
#puts co_ecount("This class teaches people to code. I hit a cone with my car. My book was co-edited by by man named cole")


def middle_way(list,list2)
    mids = []
    num1 = list[list.length / 2]
    num2 = list2[list2.length / 2]
    return mids.push(num1,num2)
end

#print middle_way([1,2,3],[1,5,3,2])

def either24(list)
   twos = 0
   fours = 0
    (list.length - 1).times do |i|
        if list[i] == 2 && list[i+1] == 2
            twos = true
        end
        if list[i] == 4 && list[i+1] == 4
            fours = true
        end
    end
    if fours == true && twos == true
        valid = false
    elsif fours == true || twos == true
        valid = true
    elsif fours == 0 && twos == 0
        valid = false
    end
    return valid
end

#puts either24([2,2,1,3,2,5,6])
#puts either24([1,2,2,3,2,4,4])
#puts either24([1,1,1,1,4,4,1,2])
#puts either24([1,1,1,1,1])


# Still need to figure out span
def span(list)
    j = 1
    i = 0
    once = 0
    span1 = 0
    span2 = 0
    (list.length - 1).times do
        while j < list.length && once == 0
            if list[i] == list[j]
                span1 = j - i
            end
            j += 1
        end
        once = 1
        j = 0
        i += 1
        while j < list.length && once == 1
            if list[i] == list[j]
                span2 = j - i
            end
            j += 1
        end  
        once = 0
        if span1 > span2
            span1 = span2
            span2 = 0
        else
            span1 = span1
            span2 = 0
        end
    end
end

#puts span([1,3,3,1,3,2,3])

def ghappy(str)
    happy = 0
    i = 1
    (str.length).times do |i|
        if (str[i] == "g" && str[i+1] == "g") || (str[i] == "g" && str[i-1] == "g")
            happy = true
        elsif (str[i] == "g" && str[i+1] != "g") && (str[i] == "g" && str[i-1] != "g")
            return false
        end
    end
    if happy == true
        return true
    end
end
#puts ghappy("gg")
#puts ghappy("going")
#puts ghappy("ggogogg")
#puts ghappy("ggggggg    g")

def merge(list,list2)
    usmerged = list + list2
    i = 0
    merged = 0
    while i < usmerged.length - 1
        if usmerged[i] > usmerged[i + 1]
            merged = usmerged.insert(i, usmerged.delete_at(i+1))
            i = 0
        end
        i += 1
    end
    return merged
end

print merge([8,3,5,2],[1,2,4,8]) 
print merge([8,3,5,7],[9,1,8,5])