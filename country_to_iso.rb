#!/usr/bin/env ruby

require 'csv'


source = "country-codes.csv"


n = ARGV.shift
s = CSV.read(source)
s.shift

n.split(",").each do |name|
  s.each do |row|
    if row[1].upcase == name.upcase
      if row[3]
        puts "#{name},#{row[3]}"
      end
    end
  end
end
