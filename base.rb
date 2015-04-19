require 'sinatra'
require 'sinatra/activerecord'
require 'shotgun'

set :database, "sqlite3:fifi.sqlite3"

class Donnees < ActiveRecord::Base
end
	
get	'/koko' do
	@datas = Donnees.all
	erb :index
end

get '/inscription' do
	erb :inscription
end

post '/resultat' do
	data = Donnees.create(params)
	erb :resultat
end