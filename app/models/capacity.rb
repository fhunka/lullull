require 'mongo_mapper'
MongoMapper.database = 'testing'
class Capacity
  include MongoMapper::Document
  
  key :type, String
  key :product_id, ObjectId
  key :size
  
  belongs_to :product
  
end