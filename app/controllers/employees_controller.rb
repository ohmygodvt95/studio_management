class EmployeesController < ApplicationController
  before_action :find_employee, except: [:index, :new, :create]

  def index
    @query = params[:query] ||= nil
    query_employees = User.ransack name_or_email_or_role_or_level_cont: @query
    @employees = query_employees.result.page(params[:page]).per Settings.per_page
  end

  def show
  end

  def new
    @employee = User.new
  end

  def create
    employee = User.new employee_params
    if employee.save
      flash[:success] = "Created employee #{employee.name} successfully"
      redirect_to employee_path(employee)
    else
      flash[:danger] = "Create employee error"
      redirect_to new_employee_path
    end
  end

  def edit
  end

  def update
    if @employee.update_attributes(employee_params)
      flash[:success] = "Updated employee #{@employee.name} successfully"
      redirect_to employee_path(@employee)
    else
      flash[:danger] = "Error when update employee #{@employee.name} !"
      redirect_to edit_employee_path(@employee)
    end
  end

  def destroy
    name = @employee.name
    if @employee.destroy
      flash[:success] = "Deleted employee #{name} successfully"
    else
      flash[:danger] = "Error when delete employee #{name} !"
    end
    redirect_to employees_path
  end

  private
  def find_employee
    @employee = User.find_by id: params[:id]
    unless @employee
      flash[:danger] = "Employee does not exist !"
      redirect_to employees_path
    end
  end

  def employee_params
    params.require(:user).permit :name, :level, :avatar, :phone, :address,
      :password, :password_confirmation, :email, :role
  end
end
