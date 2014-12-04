class ApartmentsController < ApplicationController
  def index
    @search = Apartment.search(params[:q])
    @apartments = @search.result
    # @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new
    @apartment.apttype = params[:apttype]
    @apartment.size = params[:size]
    @apartment.price = params[:price]
    @apartment.startdate = params[:startdate]
    @apartment.enddate = params[:enddate]
    @apartment.neighborhood = params[:neighborhood]
    @apartment.streetadd = params[:streetadd]
    @apartment.unit = params[:unit]
    @apartment.city = params[:city]
    @apartment.state = params[:state]
    @apartment.zip = params[:zip]
    @apartment.furnished = params[:furnished]
    @apartment.ac = params[:ac]
    @apartment.gym = params[:gym]
    @apartment.pool = params[:pool]
    @apartment.doorman = params[:doorman]
    @apartment.elevator = params[:elevator]
    @apartment.internet = params[:internet]
    @apartment.cable = params[:cable]
    @apartment.laundryu = params[:laundryu]
    @apartment.laundryb = params[:laundryb]
    @apartment.headline = params[:headline]
    @apartment.description = params[:description]
    @apartment.pictureurl = params[:pictureurl]
    @apartment.user_id = params[:user_id]

    if @apartment.save
      redirect_to "/apartments", :notice => "Apartment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])

    @apartment.apttype = params[:apttype]
    @apartment.size = params[:size]
    @apartment.price = params[:price]
    @apartment.startdate = params[:startdate]
    @apartment.enddate = params[:enddate]
    @apartment.neighborhood = params[:neighborhood]
    @apartment.streetadd = params[:streetadd]
    @apartment.unit = params[:unit]
    @apartment.city = params[:city]
    @apartment.state = params[:state]
    @apartment.zip = params[:zip]
    @apartment.furnished = params[:furnished]
    @apartment.ac = params[:ac]
    @apartment.gym = params[:gym]
    @apartment.pool = params[:pool]
    @apartment.doorman = params[:doorman]
    @apartment.elevator = params[:elevator]
    @apartment.internet = params[:internet]
    @apartment.cable = params[:cable]
    @apartment.laundryu = params[:laundryu]
    @apartment.laundryb = params[:laundryb]
    @apartment.headline = params[:headline]
    @apartment.description = params[:description]
    @apartment.pictureurl = params[:pictureurl]
    @apartment.user_id = params[:user_id]

    if @apartment.save
      redirect_to "/apartments", :notice => "Apartment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @apartment = Apartment.find(params[:id])

    @apartment.destroy

    redirect_to "/apartments", :notice => "Apartment deleted."
  end
end
