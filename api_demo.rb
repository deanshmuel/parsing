require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
# puts "whats is your Gitub username"
# username = gets.chomp
# url = "https://api.github.com/users/#{username}"

# user_serialized = open(url).read
# user = JSON.parse(user_serialized)

# puts "#{user['name']} - #{user['bio']}"
puts "what is the book you are looking for"
query = gets.chomp

URL ="https://www.googleapis.com/books/v1/volumes?q=intitle:#{query}"
data = open(URL).read
parsed_data = JSON.parse(data)

all_items = parsed_data["items"] # array of all the books

all_items.each do |book|
  #book is a Hash
  puts "we have is store #{book["volumeInfo"]["title"]}"
end
