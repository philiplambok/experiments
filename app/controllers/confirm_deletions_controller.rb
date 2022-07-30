class ConfirmDeletionsController < ApplicationController
  def create
    respond_to do |format|
      format.turbo_stream
    end
  end
end
