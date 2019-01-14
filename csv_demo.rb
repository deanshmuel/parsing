require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'


# current_row=0
# CSV.foreach(filepath) do |row|
#   unless current_row == 0
#     p row
#     # puts "#{row[0]} is a beer of color #{row[1]} coming from #{row[2]}"
#   end
#   current_row += 1
# end

# print "now with enhanced power::"

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|

  puts "#{row["Name"]} is a beer of color #{row["Appearance"]} coming from #{row["Origin"]}"
end

filepath_append    = 'data/beers_appended.csv'

CSV.open(filepath_append,'a',csv_options) do |csv|
  csv << ["Carlsberg","blond","Denmark"]
end
