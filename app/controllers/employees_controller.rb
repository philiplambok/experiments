class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def update
    employee = Employee.find params[:id]
    employee.update!(employee_params)
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email)
  end
end
