class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def confirm_destroy
    @admins = Admin.where(id: params[:ids])
    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @admins = Admin.where(id: params[:ids])
    flash[:success] = "Successfully deleted #{@admins.size} records"
    @admins.delete_all
    redirect_to admins_index_path
  end
end
