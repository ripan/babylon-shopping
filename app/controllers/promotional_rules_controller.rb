class PromotionalRulesController < ApplicationController
  before_action :set_promotional_rule, only: [:show, :edit, :update, :destroy]

  # GET /promotional_rules
  # GET /promotional_rules.json
  def index
    @promotional_rules = PromotionalRule.all
  end

  # GET /promotional_rules/1
  # GET /promotional_rules/1.json
  def show
  end

  # GET /promotional_rules/new
  def new
    @promotional_rule = PromotionalRule.new
  end

  # GET /promotional_rules/1/edit
  def edit
  end

  # POST /promotional_rules
  # POST /promotional_rules.json
  def create
    @promotional_rule = PromotionalRule.new(promotional_rule_params)

    respond_to do |format|
      if @promotional_rule.save
        format.html { redirect_to @promotional_rule, notice: 'Promotional rule was successfully created.' }
        format.json { render :show, status: :created, location: @promotional_rule }
      else
        format.html { render :new }
        format.json { render json: @promotional_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotional_rules/1
  # PATCH/PUT /promotional_rules/1.json
  def update
    respond_to do |format|
      if @promotional_rule.update(promotional_rule_params)
        format.html { redirect_to @promotional_rule, notice: 'Promotional rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @promotional_rule }
      else
        format.html { render :edit }
        format.json { render json: @promotional_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotional_rules/1
  # DELETE /promotional_rules/1.json
  def destroy
    @promotional_rule.destroy
    respond_to do |format|
      format.html { redirect_to promotional_rules_url, notice: 'Promotional rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotional_rule
      @promotional_rule = PromotionalRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotional_rule_params
      params.require(:promotional_rule).permit(:product_id, :quantity, :discount_percentage, :discount_price)
    end
end
