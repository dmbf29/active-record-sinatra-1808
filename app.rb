# Sinatra
# app.rb -> router / controller

require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  "Hello 1808"
end

get '/restaurants' do
  # get all of the retaurants
  # instance variable is available inside of our view
  @restaurants = Restaurant.all
  # give them to a view
  # @view.display(restaurants)
  erb :index
end

get '/restaurants/new' do
  erb :new
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post '/restaurants' do
  @restaurant = Restaurant.new(
    name: params[:name],
    address: params[:address]
  )
  @restaurant.save
  erb :show
end

# our router is just paths after our url
# /restaurants
# /restaurants/1
# /restaurants/2
