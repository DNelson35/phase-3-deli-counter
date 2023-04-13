require 'pry'


katz_deli = []

def line(deli) 
    if deli.empty?
        puts "The line is currently empty."
    else
       line = "The line is currently:"
       deli.each_with_index {|place, index| line << " #{index + 1}. #{place}"}
       puts line
    end
end

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
    puts "Currently serving #{deli.first}." unless deli.empty?
    puts "There is nobody waiting to be served!" if deli.empty?
    deli.shift
end

