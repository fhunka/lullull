class Admin::StoresController < ApplicationController
  layout "administration"
  def index
    @stores = Store.all
  end

  def show
  end

end
