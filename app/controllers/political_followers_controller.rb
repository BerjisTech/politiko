# frozen_string_literal: true

class PoliticalFollowersController < ApplicationController
  before_action :set_political_follower, only: %i[show edit update destroy]

  # GET /political_followers or /political_followers.json
  def index
    @political_followers = PoliticalFollower.all
  end

  # GET /political_followers/1 or /political_followers/1.json
  def show; end

  # GET /political_followers/new
  def new
    @political_follower = PoliticalFollower.new
  end

  # GET /political_followers/1/edit
  def edit; end

  # POST /political_followers or /political_followers.json
  def create
    @political_follower = PoliticalFollower.new(political_follower_params)

    respond_to do |format|
      if @political_follower.save
        format.html { redirect_to @political_follower, notice: 'Political follower was successfully created.' }
        format.json { render :show, status: :created, location: @political_follower }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @political_follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /political_followers/1 or /political_followers/1.json
  def update
    respond_to do |format|
      if @political_follower.update(political_follower_params)
        format.html { redirect_to @political_follower, notice: 'Political follower was successfully updated.' }
        format.json { render :show, status: :ok, location: @political_follower }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @political_follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /political_followers/1 or /political_followers/1.json
  def destroy
    @political_follower.destroy
    respond_to do |format|
      format.html { redirect_to political_followers_url, notice: 'Political follower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_political_follower
    @political_follower = PoliticalFollower.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def political_follower_params
    params.require(:political_follower).permit(:user, :politician)
  end
end
