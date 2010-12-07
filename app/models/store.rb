require 'mongo_mapper'
MongoMapper.database = 'testing'
class Store
  include MongoMapper::Document
  
  key :name, String
  
  many :users
  
  belongs_to :store
  
  attr_accessible :name
  
end