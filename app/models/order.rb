require 'mongo_mapper'
MongoMapper.database = 'testing'
class Order
  include MongoMapper::Document
  
  key :created_at, DateTime
  key :updated_at, DateTime
  
  belongs_to :user
  belongs_to :store
  
  many :products
  many :transactions
  
end