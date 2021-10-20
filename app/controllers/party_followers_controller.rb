# frozen_string_literal: true

class PartyFollowersController < ApplicationController
  before_action :set_party_follower, only: %i[show edit update destroy]

  # GET /party_followers or /party_followers.json
  def index
    @party_followers = PartyFollower.all
  end

  # GET /party_followers/1 or /party_followers/1.json
  def show; end

  # GET /party_followers/new
  def new
    @party_follower = PartyFollower.new
  end

  # GET /party_followers/1/edit
  def edit; end

  # POST /party_followers or /party_followers.json
  def create
    @party_follower = PartyFollower.new(party_follower_params)

    respond_to do |format|
      if @party_follower.save
        format.html { redirect_to @party_follower, notice: 'Party follower was successfully created.' }
        format.json { render :show, status: :created, location: @party_follower }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @party_follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_followers/1 or /party_followers/1.json
  def update
    respond_to do |format|
      if @party_follower.update(party_follower_params)
        format.html { redirect_to @party_follower, notice: 'Party follower was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_follower }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party_follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_followers/1 or /party_followers/1.json
  def destroy
    @party_follower.destroy
    respond_to do |format|
      format.html { redirect_to party_followers_url, notice: 'Party follower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_party_follower
    @party_follower = PartyFollower.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def party_follower_params
    params.require(:party_follower).permit(:user, :party)
  end
end
