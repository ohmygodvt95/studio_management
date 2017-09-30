class DevicesController < ApplicationController
  before_action :find_device, only: [:show, :edit, :update, :destroy]

  def index
    @query = params[:query] ||= nil
    query_devices = Device.ransack name_or_price_or_user_name_cont: @query
    @devices = query_devices.result.page(params[:page]).per Settings.per_page
  end

  def show
  end

  def new
    @device = Device.new
  end

  def create
    device = Device.new device_params
    if device.save
      flash[:success] = "Created device #{device.name} successfully"
      redirect_to device
    else
      flash[:danger] = "Create device error !"
      redirect_to new_device_path
    end
  end

  def edit
  end

  def update
    if @device.update_attributes(device_params)
      flash[:success] = "Updated device #{@device.name} successfully"
      redirect_to @device
    else
      flash[:danger] = "Update device error !"
      redirect_to edit_device_path(@device)
    end
  end

  def destroy
    name = @device.name
    if @device.destroy
      flash[:success] = "Deleted device #{name} successfully"
    else
      flash[:success] = "Delete device #{name} error !"
    end
    redirect_to devices_path
  end

  private
  def device_params
    params.require(:device).permit :name, :user_id, :price, :avatar
  end

  def find_device
    @device = Device.find_by id: params[:id]
    unless @device
      flash[:danger] = "Device does not exist !"
      redirect_to devices_path
    end
  end
end
