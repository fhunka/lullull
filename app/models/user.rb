require 'mongo_mapper'
MongoMapper.database = 'testing'
class User
  include MongoMapper::Document
  
  key :name, String
  key :store_id, ObjectId
  
  many :transactions
  many :orders
  
  belongs_to :store
  
  attr_accessible :name
  
end