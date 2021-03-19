class MaterialsController < ApplicationController
  before_action :set_material, only: [:show]
  
  def index
    @materials = Material.all
  end
  
  def show
  end
  
  private
    def set_material
      @material = Material.find(params[:id])
    end
end