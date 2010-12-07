class Admin::PackagesProductsController < ApplicationController
  def show
    
  end
  def destroy
    @package_product = PackagesProducts.find(params[:id])
    @package_product.destroy
    
    redirect_to(admin_package_path(params[:id]))
    respond_to do |format|
      format.html { redirect_to(tanks_url) }
      format.xml  { head :ok }
    end
  end
end
