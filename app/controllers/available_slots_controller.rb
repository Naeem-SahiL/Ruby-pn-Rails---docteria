class AvailableSlotsController < ApplicationController
  before_action :set_available_slot, only: %i[show edit update destroy]

  # GET /available_slots or /available_slots.json
  def index
    @available_slots = AvailableSlot.all
  end

  # GET /available_slots/1 or /available_slots/1.json
  def show; end

  # GET /available_slots/new
  def new
    @available_slot = AvailableSlot.new
  end

  # GET /available_slots/1/edit
  def edit; end

  # POST /available_slots or /available_slots.json
  def create
    @available_slot = AvailableSlot.new(available_slot_params)

    respond_to do |format|
      if @available_slot.save
        format.html { redirect_to available_slots_url, notice: 'Available slot was successfully created.' }
        format.json { render :show, status: :created, location: @available_slot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @available_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_slots/1 or /available_slots/1.json
  def update
    respond_to do |format|
      if @available_slot.update(available_slot_params)
        format.html { redirect_to available_slots_url, notice: 'Available slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_slot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @available_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_slots/1 or /available_slots/1.json
  def destroy
    @available_slot.destroy

    respond_to do |format|
      format.html { redirect_to available_slots_url, notice: 'Available slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_available_slot
    @available_slot = AvailableSlot.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def available_slot_params
    params.require(:available_slot).permit(:date_from, :date_to, :time_from, :time_to, :fees)
  end
end
