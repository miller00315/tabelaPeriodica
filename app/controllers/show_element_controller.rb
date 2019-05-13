class ShowElementController < ApplicationController

  require 'json'

  before_action :set_elements, only: [:show]

  def show
    @element = {at_num: @elements["elements"][params[:element].to_i - 1]["number"], 
                symbol: @elements["elements"][params[:element].to_i - 1]["symbol"], 
                name: @elements["elements"][params[:element].to_i - 1]["name"], 
                number: @elements["elements"][params[:element].to_i - 1]["atomic_mass"]}
    
    @information = {
      utility_img: @elements["elements"][params[:element].to_i - 1]["utility_img"],
      get_image: @elements["elements"][params[:element].to_i - 1]["get_img"],
      summary: @elements["elements"][params[:element].to_i - 1]["summary"],
      discovered_by: @elements["elements"][params[:element].to_i - 1]["discovered_by"] ? @elements["elements"][params[:element].to_i - 1]["discovered_by"] : 'desconhecido',
      how_produce: "O alumínio ácido de Lewis liga-se ao oxigénio da molécula de água e o alumínio base de Lewis dissocia o 
      átomo de hidrogénio. Se o processo ocorrer uma segunda vez, envolvendo dois outros átomos de alumínio, 
      restarão dois átomos de hidrogénio, que se ligarão para formar uma molécula de hidrogénio na forma de gás (H2).",
      named_by: @elements["elements"][params[:element].to_i - 1]["named_by"] ? @elements["elements"][params[:element].to_i - 1]["named_by"] : "Desconhecido",
      phase: @elements["elements"][params[:element].to_i - 1]["phase"],
      utility: "Ela ocorre principalmente em água e na maior parte dos compostos orgânicos e é usado na produção de amoníaco 
      e de outros produtos químicos, na hidrogenação de gorduras e óleos, e na soldagem.
      O Gás Hidrogênio (H2) é explorado para uso em motores a combustão e em células de combustível.",
      spectral_img: @elements["elements"][params[:element].to_i - 1]["spectral_img"],
      discovery_img: @elements["elements"][params[:element].to_i - 1]["discovery_img"],
      named_img: @elements["elements"][params[:element].to_i - 1]["named_img"],
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
