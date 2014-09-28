module DynamicSelect
  class CampusController < ApplicationController
    respond_to :json

    def index
      @campus = Campu.where(:institution_id => params[:institution_id])
      respond_with(@campus)
    end
  end
end