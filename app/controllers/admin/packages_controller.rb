class Admin::PackagesController < ApplicationController
  layout "administration"
  def index
    @packages = Package.all
  end
  
  def show
    @package = Package.find(params[:id])
  end
  
  def edit
    @package = Package.find(params[:id])
  end

  def new
    @package = Package.new
  end
  
 # POST /clients
  # POST /clients.xml
  def create
    @package = Package.new(params[:package])

    respond_to do |format|
      if @package.save
        format.html { redirect_to(admin_package_path(@package), :notice => 'Package was successfully created.') }
        format.xml  { render :xml => @package, :status => :created, :location => @package }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @package.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.xml
  def update
    @package = Package.find(params[:id])
    
    respond_to do |format|
      if @package.update_attributes(params[:package])
        format.html { redirect_to(edit_admin_package_path(@package), :notice => "Package was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @package.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.xml
  def destroy
    @package = Package.find(params[:id])
    @package.destroy

    respond_to do |format|
      format.html { redirect_to(admin_packages_path) }
      format.xml  { head :ok }
    end
  end
end
