require 'mongo_mapper'
MongoMapper.database = 'testing'
class Taxonomy
  include MongoMapper::Document
  
  key :name, String
  
  many :packages
  
  attr_accessible :name
  
end