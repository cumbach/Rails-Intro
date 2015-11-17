require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: 'users',
#   query_values: {
#     'some_category[a_key]' => 'another value',
#     'some_category[a_second_key]' => 'yet another value',
#     'some_category[inner_inner_hash][key]' => 'value',
#     # 'something_else' => 'aaahhhhh'
#   }
# ).to_s
#
# puts RestClient.get(url)

# {user: {name: "Abe", email: 'shinzo@asahi.net'}}

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { name: "Gizmo", email: "gizmo@yahoo.com" } }
  )
end

# begin
  create_user
# rescue 422
#   puts "422 error!"
# end
#SEE SOLUTION FOR ABOVE
