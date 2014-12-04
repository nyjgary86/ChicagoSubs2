require 'open-uri'
require 'json'

class ApartmentsController < ApplicationController
  def index
    @search = Apartment.search(params[:q])
    @apartments = @search.result
  end

  def show
    @apartment = Apartment.find(params[:id])
    apartment_address = @apartment.streetadd + " Chicago IL " + @apartment.zip.to_s
    url_safe_address = URI.encode(apartment_address)
    full_url = "http://maps.googleapis.com/maps/api/geocode/json?address=" + url_safe_address
    raw_data = open(full_url).read
    parsed_data = JSON.parse(raw_data)
    @the_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"].to_s
    @the_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"].to_s
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
