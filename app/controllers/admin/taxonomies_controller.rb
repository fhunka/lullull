class Admin::TaxonomiesController < ApplicationController
  layout "administration"
  def index
    @taxonomies = Taxonomy.all
  end
  
  def show
    @taxonomy = Taxonomy.find(params[:id])
  end
  
  def edit
    @taxonomy = Taxonomy.find(params[:id])
  end

  def new
    @taxonomy = Taxonomy.new
  end
  
 # POST /clients
  # POST /clients.xml
  def create
    @taxonomy = Taxonomy.new(params[:taxonomy])

    respond_to do |format|
      if @taxonomy.save
        format.html { redirect_to(admin_taxonomy_path(@taxonomy), :notice => 'taxonomy was successfully created.') }
        format.xml  { render :xml => @taxonomy, :status => :created, :location => @taxonomy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @taxonomy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.xml
  def update
    @taxonomy = Taxonomy.find(params[:id])
    
    respond_to do |format|
      if @taxonomy.update_attributes(params[:taxonomy])
        format.html { redirect_to(edit_admin_taxonomy_path(@taxonomy), :notice => "taxonomy was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @taxonomy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.xml
  def destroy
    @taxonomy = Taxonomy.find(params[:id])
    @taxonomy.destroy

    respond_to do |format|
      format.html { redirect_to(admin_taxonomys_path) }
      format.xml  { head :ok }
    end
  end
end
