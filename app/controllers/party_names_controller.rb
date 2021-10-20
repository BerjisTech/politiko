# frozen_string_literal: true

class PartyNamesController < ApplicationController
  before_action :set_party_name, only: %i[show edit update destroy]

  # GET /party_names or /party_names.json
  def index
    @party_names = PartyName.all
  end

  # GET /party_names/1 or /party_names/1.json
  def show; end

  # GET /party_names/new
  def new
    @party_name = PartyName.new
  end

  # GET /party_names/1/edit
  def edit; end

  # POST /party_names or /party_names.json
  def create
    @party_name = PartyName.new(party_name_params)

    respond_to do |format|
      if @party_name.save
        format.html { redirect_to @party_name, notice: 'Party name was successfully created.' }
        format.json { render :show, status: :created, location: @party_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @party_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_names/1 or /party_names/1.json
  def update
    respond_to do |format|
      if @party_name.update(party_name_params)
        format.html { redirect_to @party_name, notice: 'Party name was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_names/1 or /party_names/1.json
  def destroy
    @party_name.destroy
    respond_to do |format|
      format.html { redirect_to party_names_url, notice: 'Party name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_party_name
    @party_name = PartyName.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def party_name_params
    params.require(:party_name).permit(:party, :name, :start_date, :end_date)
  end
end
