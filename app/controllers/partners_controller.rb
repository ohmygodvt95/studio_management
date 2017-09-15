class PartnersController < ApplicationController
  before_action :find_partner, except: [:index, :new, :create]

  def index
    @query = params[:query] ||= nil
    query_partners = Partner.ransack name_or_email_or_address_or_description_cont: @query
    @partners = query_partners.result.page(params[:page]).per Settings.per_page
  end

  def show

  end

  def new
    @partner = Partner.new
  end

  def create
    partner = Partner.new partner_params
    if partner.save
      flash[:success] = "Created partner #{partner.name}"
      redirect_to partner
    else
      flash[:danger] = "Error when create parner !"
      redirect_to new_partner_path
    end
  end

  def edit

  end

  def update
    if @partner.update_attributes(partner_params)
      flash[:success] = "Updated partner #{@partner.name}"
      redirect_to @partner
    else
      flash[:danger] = "Error when update parner !"
      redirect_to edit_partner_path(@partner)
    end
  end

  def destroy
    name = @partner.name
    if @partner.destroy
      flash[:success] = "Deleted partner #{name} successfully"
    else
      flash[:danger] = "Error when delete partner #{name} !"
    end
    redirect_to partners_path
  end

  private
  def find_partner
    @partner = Partner.find_by id: params[:id]
    unless @partner
      flash[:danger] = "Parter does not exist !"
      redirect_to partners_path
    end
  end
  def partner_params
    params.require(:partner).permit :name, :email, :address, :description
  end
end
