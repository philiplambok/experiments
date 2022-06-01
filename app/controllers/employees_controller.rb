class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def update
    @employee = Employee.find params[:id]
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      flash.now[:error] = @employee.errors.full_messages.to_sentence
      respond_to do |format|
        format.turbo_stream
        format.js
      end
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email)
  end
end
