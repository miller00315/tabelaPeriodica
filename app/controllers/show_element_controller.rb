class ShowElementController < ApplicationController

  require 'json'

  before_action :set_elements, only: [:show]

  def show
    @element = {at_num: @elements["elements"][params[:element].to_i - 1]["number"], 
                symbol: @elements["elements"][params[:element].to_i - 1]["symbol"], 
                name: @elements["elements"][params[:element].to_i - 1]["name"], 
                number: @elements["elements"][params[:element].to_i - 1]["atomic_mass"]}
    
    @information = {
      category: @elements["elements"][params[:element].to_i - 1]["category"],
      utility_img: @elements["elements"][params[:element].to_i - 1]["utility_img"],
      get_image: @elements["elements"][params[:element].to_i - 1]["get_img"],
      summary: @elements["elements"][params[:element].to_i - 1]["summary"],
      discovered_by: @elements["elements"][params[:element].to_i - 1]["discovered_by"] ? @elements["elements"][params[:element].to_i - 1]["discovered_by"] : 'desconhecido',
      how_produce: @elements["elements"][params[:element].to_i - 1]["how_produce"],
      named_by: @elements["elements"][params[:element].to_i - 1]["named_by"] ? @elements["elements"][params[:element].to_i - 1]["named_by"] : @elements["elements"][params[:element].to_i - 1]["discovered_by"] ? @elements["elements"][params[:element].to_i - 1]["discovered_by"] : 'desconhecido',
      phase: @elements["elements"][params[:element].to_i - 1]["phase"],
      utility: @elements["elements"][params[:element].to_i - 1]["utility"],
      spectral_img: @elements["elements"][params[:element].to_i - 1]["spectral_img"],
      discovery_img: @elements["elements"][params[:element].to_i - 1]["discovery_img"],
      named_img: @elements["elements"][params[:element].to_i - 1]["named_img"] ? @elements["elements"][params[:element].to_i - 1]["named_img"] : @elements["elements"][params[:element].to_i - 1]["discovery_img"] ? @elements["elements"][params[:element].to_i - 1]["discovery_img"] : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBLzQlz0M52leMvfZRWPldnWElju72nM0aNO9c4CAkejrAOpPg",
    }
    
    @properties = {
      density: @elements["elements"][params[:element].to_i - 1]["density"],
      boil: @elements["elements"][params[:element].to_i - 1]["boil"],
      atomic_mass: @elements["elements"][params[:element].to_i - 1]["atomic_mass"],
      melt: @elements["elements"][params[:element].to_i - 1]["melt"],
      molar_helt: @elements["elements"][params[:element].to_i - 1]["molar_heat"],
      electron_configuration: @elements["elements"][params[:element].to_i - 1]["electron_configuration"],
		  electron_affinity: @elements["elements"][params[:element].to_i - 1]["electron_affinity"],
		  electronegativity_pauling: @elements["elements"][params[:element].to_i - 1]["electronegativity_pauling"],
      color_name: "transparent",
      quote: @elements["elements"][params[:element].to_i - 1]["source"],
      hex_color: "#ffffff",
    }
  end

  def set_elements
    
    @elements = JSON.parse(File.read('app/assets/javascripts/periodicTable.json'))
    
  end
end
