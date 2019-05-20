class ShowIndividualController < ApplicationController

  require 'json'

  before_action :set_elements, only: [:index]

  def index
  end

  def set_elements

    @elements = JSON.parse(File.read('app/assets/javascripts/persons.json'))

    if(params[:discovery_by])
      
      @element = @elements["persons"][params[:discovery_by].to_i]
    else
     
      @element = @elements["persons"][params[:named_by].to_i]
    end
  end

end
