class ListingsController < ApplicationController
  before_action :set_listing, only: %i[ show edit update destroy ]

  def index
    @listings = Listing.all

    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { listing: listing }),
        image_url: helpers.asset_url('https://linkpicture.com/q/location_1.jpg')
        # image_url: helpers.asset_url('https://previews.123rf.com/images/alextanya123rf/alextanya123rf1605/alextanya123rf160500240/56418255-black-and-white-web-icon-of-plane-airport-icon-plane-shape-plane-icon-shape-label-symbol-graphic-vec.jpg')

      }
    end
  end

  def show; end

  def new
    @listing = Listing.new
  end

  def edit; end

  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: "Listing was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: "Listing was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:location, :bds, :ba, :area, :developer, :price)
  end
end
