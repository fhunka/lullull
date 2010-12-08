require 'mongo_mapper'
MongoMapper.database = 'testing'
class Store
  include MongoMapper::Document
  
  key :title, String
  
  many :products
  many :channels
  many :users
  
  attr_accessible :name
  
end