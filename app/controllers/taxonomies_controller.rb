class TaxonomiesController < ApplicationController
  def index
    @taxonomies = @current_taxonomies
    @packages = Package.all
  end

  def show
    @taxonomy = Taxonomy.find(params[:id])
    @packages = @taxonomy.packages
  end
  
  def edit
    @taxonomy = Taxonomy.find(params[:id])
  end

  def new
    @taxonomy = Taxonomy.new
  end

  def update
    @taxonomy = Taxonomy.find(params[:id])
  end

  def create
    @taxonomy = Taxonomy.new(params[:package])
  end

  def destroy
    @taxonomy = Taxonomy.find(params[:id])
    @taxonomy.destroy
  end
  
end
