require 'mongo_mapper'
MongoMapper.database = 'testing'

class Transaction
  include MongoMapper::Document
  
  key :user_id, ObjectId
  key :store_id, ObjectId
  
  key :amount, String
  key :created_at, DateTime
  
  belongs_to :user
  belongs_to :store
  
end