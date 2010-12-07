require 'mongo_mapper'
MongoMapper.database = 'testing'

class Purchase
  include MongoMapper::Document
  
  key :package_id, ObjectId
  key :transaction_id, ObjectId
  
  belongs_to :package
  belongs_to :transaction
  
end