require 'mongo_mapper'
MongoMapper.database = 'testing'
class Store
  include MongoMapper::Document
  
  key :name, String
  
  many :products
  many :channels
  many :users
  many :taxonomies
  
  attr_accessible :name
  
end