# frozen_string_literal: true

class PartyApprovalsController < ApplicationController
  before_action :set_party_approval, only: %i[show edit update destroy]

  # GET /party_approvals or /party_approvals.json
  def index
    @party_approvals = PartyApproval.all
  end

  # GET /party_approvals/1 or /party_approvals/1.json
  def show; end

  # GET /party_approvals/new
  def new
    @party_approval = PartyApproval.new
  end

  # GET /party_approvals/1/edit
  def edit; end

  # POST /party_approvals or /party_approvals.json
  def create
    @party_approval = PartyApproval.new(party_approval_params)

    respond_to do |format|
      if @party_approval.save
        format.html { redirect_to @party_approval, notice: 'Party approval was successfully created.' }
        format.json { render :show, status: :created, location: @party_approval }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @party_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_approvals/1 or /party_approvals/1.json
  def update
    respond_to do |format|
      if @party_approval.update(party_approval_params)
        format.html { redirect_to @party_approval, notice: 'Party approval was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_approval }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_approvals/1 or /party_approvals/1.json
  def destroy
    @party_approval.destroy
    respond_to do |format|
      format.html { redirect_to party_approvals_url, notice: 'Party approval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_party_approval
    @party_approval = PartyApproval.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def party_approval_params
    params.require(:party_approval).permit(:user, :party, :approval)
  end
end
