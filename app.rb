#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, adapter: "sqlite3", database: "pizzashop.db"
class Product < ActiveRecord::Base
end
get '/' do
	@pizza = Product.all
	erb :index
end
post '/cart' do
	erb "Hi!"
end
