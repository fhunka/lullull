require 'mongo_mapper'
MongoMapper.database = 'testing'

class PackageProduct
  include MongoMapper::Document
  include Relationship

  habtm_glue :package, :product
end
