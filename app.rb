#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, adapter: "sqlite3", database: "pizzashop.db"
class Product < ActiveRecord::Base
end
class Order < ActiveRecord::Base
end

get '/' do
	@pizza = Product.all
	erb :index
end
post '/cart' do
	@orders = params[:orders].split(',')
	@h = {}
	i = 1
	@orders.each do |order|
		@h[order.split('=')[0]] = order.split('=')[1] if order.include? 'product_'
	end
	@pizza = Product.all
	erb :cart
end
post '/orders' do
	o = Order.new
	@pizza = Product.all
	o.pizza_order = params[:orders]
	o.save
	erb :index
end
get '/orders' do
	@o = Order.all
	@pizza = Product.all
	erb :order
end

