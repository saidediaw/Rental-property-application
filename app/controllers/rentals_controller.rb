class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @rentals = Rental.all
  end

  # GET /rental/1
  # GET /rental/1.json
  def show
  end

  # GET /rentals/new
  def new
    @rental = Rental.new
    1.times { @rental.stations.build }
  end

  # GET /rentals/1/edit
  def edit
    @rental.stations.build
  end

  # POST /rentals
  # POST /rentals.json
  def create
    	@rental = Rental.new(rental_params)
    	if params[:back]
        render :new
      else
  	    if @rental.save
  	      redirect_to rentals_path, notice: "'Rental was successfully created!"
  	    else
  	      render :new
  	    end
  	  end
    end
  # PATCH/PUT /rentals/1
  # PATCH/PUT /rentals/1.json
  def update
    respond_to do |format|
      if @rental.update(rental_params)
        format.html { redirect_to @rental, notice: 'Rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental }
      else
        format.html { render :edit }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @rental.destroy
    respond_to do |format|
      format.html { redirect_to rentals_url, notice: 'Rental was successfully destroyed.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_rental
  @rental = Rental.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def rental_params
  params.require(:rental).permit(:rental_name, :rent, :address, :age, :remark, stations_attributes: [:id, :line, :station, :time])
  end
  end
