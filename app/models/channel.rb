require 'mongo_mapper'
MongoMapper.database = 'testing'
class Channel
  include MongoMapper::Document
  
  key :name, String
  
  belongs_to :store
  
  attr_accessible :name
  
end