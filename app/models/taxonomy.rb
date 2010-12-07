require 'mongo_mapper'
MongoMapper.database = 'testing'
class Taxonomy
  include MongoMapper::Document
  
  key :name, String
  
  attr_accessible :name
  #has_and_belongs_to_many :packages
end

#Taxonomy.create(:name => "foo")
#Taxonomy.create(:name => "bar")
