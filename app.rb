# Encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# use without setup db in config/database.yml
# set :database, 'sqlite3:barbershop.db'

class Client < ActiveRecord::Base
    validates :name, presence: true, length: {maximum: 20}
    validates :phone, presence: true, :numericality => {:only_integer => true}, :length => {:is => 10}
    validates :email, presence: true
    validates :datestamp, presence: true
end

class Barber < ActiveRecord::Base
end

before do
  @barbers = Barber.all
end

get '/' do
  @barbers = Barber.all
  erb :index
end

get '/visit' do
    @c = Client.new
  @datetimepicker = true
    erb :visit
end

post '/visit' do
  @datetimepicker = true
  @c = Client.new params[:client]
  if @c.save
    erb "<h2>OK</h2>"
  else
    @message, @type = @c.errors.full_messages.first, 'warning'
  erb :visit
  end
end
