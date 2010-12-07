class PackagesController < ApplicationController
  def index
    #Package.create(:name => "GOO")
    @packages = Package.all
  end
  
  def show
    #p = Product.new(:name => "GAAAasdasdasd")
    #p.save
    
    @package = Package.find(params[:id])
    
    #@package.products << p
  end
end
