require 'mongo_mapper'
MongoMapper.database = 'testing'
class Taxonomy
  include MongoMapper::Document
  
  key :name, String
  key :store_id, ObjectId
  key :package_ids, Array
  key :taxonomy_ids, Array
  
  
  
  belongs_to :store
  
  attr_accessible :name
  
  many :packages, :in => :package_ids, :class_name => "Package"
  many :taxonomies, :in => :taxonomy_ids, :class_name => "Taxonomy"
  
  
end