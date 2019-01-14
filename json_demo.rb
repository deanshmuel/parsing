require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'


# serialized_beers = File.read(filepath)
# # p serialized_beers.class
# beers = JSON.parse(serialized_beers)

# beers.each do |key , val|
#   puts key
#   # puts val.class
# end


# beers["beers"].each do |record|
#   puts "#{record["name"]} is a beer form #{record["origin"]}"
# end


#wiritng to a json file
filepath_append    = 'data/beers_appended.json'
beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
  # etc...
]}


# p beers.class
json = JSON.generate(beers)
# p json
File.open(filepath, 'wb') do |file|
  file.write(json)
end









