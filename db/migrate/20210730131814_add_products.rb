class AddProducts < ActiveRecord::Migration[6.1]
  def change
  	Product.create :title => 'Гавайская',
  		:description => 'Гавайская пицца',
  		:price => 350,
  		:size => 30,
  		:is_spicy => false,
  		:is_veg => false,
  		:is_best_offer => false,
  		:path_to_image => '/images/01.jpg'

  	Product.create :title => 'Пепперони',
  		:description => 'Пицца пеппрони',
  		:price => 450,
  		:size => 32,
  		:is_spicy => false,
  		:is_veg => false,
  		:is_best_offer => true,
  		:path_to_image => '/images/02.jpg'

  	Product.create :title => 'Вегетарианская',
  		:description => 'Вегетарианская пицца',
  		:price => 400,
  		:size => 30,
  		:is_spicy => false,
  		:is_veg => true,
  		:is_best_offer => false,
  		:path_to_image => '/images/03.jpg'
  end
end
