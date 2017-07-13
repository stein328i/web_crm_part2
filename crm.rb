require_relative 'contact'
require 'sinatra'



get '/' do
  redirect to ('/contacts')
end


get '/contacts' do
  @index_link = 'http://localhost:4567/'
  @contacts = Contact.all
  erb :contacts
end




after do
  ActiveRecord::Base.connection.close
end
