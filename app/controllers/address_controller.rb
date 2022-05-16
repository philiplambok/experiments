class AddressController < ApplicationController
  def index
    @states = CS.states(params[:country])
    respond_to do |format|
      format.turbo_stream
    end
  end
  
  def new; end
end
