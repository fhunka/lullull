class TaxonomiesController < ApplicationController
  def index
    @taxonomies = @current_taxonomies
    @packages = Package.all
  end

  def show
    @taxonomy = Taxonomy.find(params[:id])
    @packages = @taxonomy.packages
  end

end
