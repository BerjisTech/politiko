# frozen_string_literal: true

class PreviousPartiesController < ApplicationController
  before_action :set_previous_party, only: %i[show edit update destroy]

  # GET /previous_parties or /previous_parties.json
  def index
    @previous_parties = PreviousParty.all
  end

  # GET /previous_parties/1 or /previous_parties/1.json
  def show; end

  # GET /previous_parties/new
  def new
    @previous_party = PreviousParty.new
  end

  # GET /previous_parties/1/edit
  def edit; end

  # POST /previous_parties or /previous_parties.json
  def create
    @previous_party = PreviousParty.new(previous_party_params)

    respond_to do |format|
      if @previous_party.save
        format.html { redirect_to @previous_party, notice: 'Previous party was successfully created.' }
        format.json { render :show, status: :created, location: @previous_party }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @previous_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /previous_parties/1 or /previous_parties/1.json
  def update
    respond_to do |format|
      if @previous_party.update(previous_party_params)
        format.html { redirect_to @previous_party, notice: 'Previous party was successfully updated.' }
        format.json { render :show, status: :ok, location: @previous_party }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @previous_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previous_parties/1 or /previous_parties/1.json
  def destroy
    @previous_party.destroy
    respond_to do |format|
      format.html { redirect_to previous_parties_url, notice: 'Previous party was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_previous_party
    @previous_party = PreviousParty.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def previous_party_params
    params.require(:previous_party).permit(:party, :politician, :start_date, :end_date)
  end
end
