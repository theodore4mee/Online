class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  def self.find_products_for_sale
    find(:all, :order => "title" )
  end
  
  validates_presence_of :description, :image_url, :price, :title
  validates_numericality_of :price
  validates_uniqueness_of :title
  
  #IMAGE EXTENSION VALIDATION
  validates_format_of :image_url,
                      :with => %r{\.(gif|jpg|png)$}i,
                      :message => 'must be a URL for GIF, JPG ' +
                      'or PNG image.(gif|jpg|png)'
  
  # validate :price_must_be_at_least_a_cent
  # protected
  #  def price_must_be_at_least_a_cent
  #  errors.add(:price, 'should be at least 0.01' ) if price.nil? ||
  #  price < 0.01
  #end 
end
