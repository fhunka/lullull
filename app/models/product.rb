require 'mongo_mapper'
MongoMapper.database = 'testing'

class Product
  include MongoMapper::Document
  #include Relationship
  #mount_uploader :attachment, AttachmentUploader
  
  #key :package_id, ObjectId
  key :name, String
  #key :attachment, String
  
  #key :package_ids, Array
  
  many :packages, :class_name => "Package", :foreign_key => :package_ids
  many :images
  
  #attr_accessible :name
  
end

#Product.create(:name => "Gaa")