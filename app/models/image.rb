require 'mongo_mapper'
MongoMapper.database = 'testing'

class Image
  include MongoMapper::Document
  
  key :name, String
  
  attr_accessible :name
  
end