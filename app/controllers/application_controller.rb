class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :generate_taxonomies
  
  def generate_taxonomies
    @current_taxonomies = Taxonomy.all
  end
  
end
