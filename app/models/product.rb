require 'mongo_mapper'
MongoMapper.database = 'testing'

class Product
  include MongoMapper::Document
  #include Relationship
  #mount_uploader :attachment, AttachmentUploader
  
  key :name, String
  key :attachment, String
  
  many :packages
  many :images
  
  attr_accessible :name
  
end

#Product.create(:name => "Gaa")