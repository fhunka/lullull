require 'mongo_mapper'
MongoMapper.database = 'testing'

class Product
  include MongoMapper::Document
  #include Relationship
  #mount_uploader :attachment, AttachmentUploader
  
  #key :package_id, ObjectId
  key :name, String
  #key :attachment, String
  
  key :package_ids, Array
  
  many :packages, :in => :package_ids,  :class_name => "Package"
  many :images
  
  #attr_accessible :name
  
end

#Product.create(:name => "Gaa")