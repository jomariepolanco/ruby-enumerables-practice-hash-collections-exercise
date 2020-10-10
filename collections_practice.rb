# your code goes here
require 'pry'

def begins_with_r(array)
    array.all? {|ele| ele[0] == "r"}
end

def contain_a(array)
    array.select {|ele| ele.include? "a"}
end

def first_wa(array)
    array.find {|ele| ele[0] == "w" && ele[1] == "a"}
end

def remove_non_strings(array)
    array.delete_if {|ele| ele.class != String}
end

def count_elements(array)
    array.each do |original_hash|
        original_hash[:count] = 0 
        name = original_hash[:name]
        array.each do |hash|
            if hash[:name] == name
                original_hash[:count] += 1
            end
        end 
    end.uniq
end

def merge_data(array1, array2)
    new_array = []
    array1.each_with_index do |element, index|
        new_array.push(array1[index].merge(array2[index]))
    end
    new_array 
end

def find_cool(array)
    new_array = []
    array.each do |hash|
        if hash[:temperature] == "cool"
            new_array << hash 
        end
    end
    new_array 
end

def organize_campuses(hash)
    new_hash = {}
    hash.each do |campus, location_hash|
        location = location_hash[:location]
        if new_hash[location]
            new_hash[location] << campus 
        else
            new_hash[location] = []
            new_hash[location] << campus 
        end
    end
    new_hash 
end