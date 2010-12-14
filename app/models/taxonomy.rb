require 'mongo_mapper'
MongoMapper.database = 'testing'
class Taxonomy
  include MongoMapper::Document
  
  key :name, String
  key :store_id, ObjectId
  key :package_ids, Array
  
  belongs_to :store
  
  attr_accessible :name
  belongs_to :package
  many :packages, :in => :package_ids, :class_name => "Package", :foreign_key => :taxonomy_ids
  
end