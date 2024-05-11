class SpecsController < ApplicationController
  def index
  end

  def new
    @spec = Spec.new
  end

  def create
    @spec = Spec.new(spec_params)
    if @spec.save
      flash[:notice] = "Spec is successfully created."
      redirect_back fallback_location: specs_path
    else
      flash[:alert] = "Spec is not created."
      render new_spec_path
    end
  end

  def show 
    @spec = Spec.find(params[:id])
  end
  
  private

  def spec_params
    params.require(:spec).permit(:title, :description, :front, :left, :right, :back, :specs_type_id)
  end
end
