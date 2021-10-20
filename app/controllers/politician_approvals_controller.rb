# frozen_string_literal: true

class PoliticianApprovalsController < ApplicationController
  before_action :set_politician_approval, only: %i[show edit update destroy]

  # GET /politician_approvals or /politician_approvals.json
  def index
    @politician_approvals = PoliticianApproval.all
  end

  # GET /politician_approvals/1 or /politician_approvals/1.json
  def show; end

  # GET /politician_approvals/new
  def new
    @politician_approval = PoliticianApproval.new
  end

  # GET /politician_approvals/1/edit
  def edit; end

  # POST /politician_approvals or /politician_approvals.json
  def create
    @politician_approval = PoliticianApproval.new(politician_approval_params)

    respond_to do |format|
      if @politician_approval.save
        format.html { redirect_to @politician_approval, notice: 'Politician approval was successfully created.' }
        format.json { render :show, status: :created, location: @politician_approval }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @politician_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politician_approvals/1 or /politician_approvals/1.json
  def update
    respond_to do |format|
      if @politician_approval.update(politician_approval_params)
        format.html { redirect_to @politician_approval, notice: 'Politician approval was successfully updated.' }
        format.json { render :show, status: :ok, location: @politician_approval }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @politician_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politician_approvals/1 or /politician_approvals/1.json
  def destroy
    @politician_approval.destroy
    respond_to do |format|
      format.html { redirect_to politician_approvals_url, notice: 'Politician approval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_politician_approval
    @politician_approval = PoliticianApproval.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def politician_approval_params
    params.require(:politician_approval).permit(:user, :party, :approval)
  end
end
