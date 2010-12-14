require 'mongo_mapper'
MongoMapper.database = 'testing'

class Package
  #require 'carrierwave/orm/mongo'
  include MongoMapper::Document
  
  key :name, String, :required => true
  key :product_ids, Array
  key :taxonomy_ids, Array
  timestamps!
  
  many :products, :in => :product_ids, :class_name => "Product"
  many :taxonomies, :in => :taxonomy_ids, :class_name => "Taxonomy"
  
  #def is_empty?
  #  self.products.empty?
  #end
  
  #def permalink
  #  Package.escape_url(name)
  #end
  
  #def to_key
  #  self.keys.to_a
  #end
  
end