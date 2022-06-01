class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def update
    employee = Employee.find params[:id]
    if employee.update(employee_params)
      redirect_to employees_path
    else
      @employees = Employee.all
      @error_message = employee.errors.full_messages.to_sentence
      render :index, status: :unprocessable_entity
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email)
  end
end
