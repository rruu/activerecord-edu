#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'sinatra/activerecord'

set :database, 'sqlite3:barbershop.db'

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
    @barbers = Barber.order "created_at desc"
    erb :index
end

get '/visit' do
    @datetimepicker = true
    erb :visit
end

post '/visit' do
    @datetimepicker = true
    c = Client.new params[:client]
    if c.save
        erb "<h2>OK</h2>"
    else
        @message = c.errors.full_messages.first
    erb :visit
    end
end
