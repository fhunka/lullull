require 'mongo_mapper'
MongoMapper.database = 'testing'

class Package
  #require 'carrierwave/orm/mongo'
  include MongoMapper::Document
  
  #mount_uploader :attachment, AttachmentUploader
  
  key :name, String
  key :attachment, String  
  
  many :attachements
  many :products
  many :taxonomies
  
  attr_accessible :name
  
  def is_empty?
    self.products.empty?
  end
  
end