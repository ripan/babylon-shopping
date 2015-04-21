class MiscPromotionalRulesController < ApplicationController
  before_action :set_misc_promotional_rule, only: [:show, :edit, :update, :destroy]

  # GET /misc_promotional_rules
  # GET /misc_promotional_rules.json
  def index
    @misc_promotional_rules = MiscPromotionalRule.all
  end

  # GET /misc_promotional_rules/1
  # GET /misc_promotional_rules/1.json
  def show
  end

  # GET /misc_promotional_rules/new
  def new
    @misc_promotional_rule = MiscPromotionalRule.new
  end

  # GET /misc_promotional_rules/1/edit
  def edit
  end

  # POST /misc_promotional_rules
  # POST /misc_promotional_rules.json
  def create
    @misc_promotional_rule = MiscPromotionalRule.new(misc_promotional_rule_params)

    respond_to do |format|
      if @misc_promotional_rule.save
        format.html { redirect_to @misc_promotional_rule, notice: 'Misc promotional rule was successfully created.' }
        format.json { render :show, status: :created, location: @misc_promotional_rule }
      else
        format.html { render :new }
        format.json { render json: @misc_promotional_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /misc_promotional_rules/1
  # PATCH/PUT /misc_promotional_rules/1.json
  def update
    respond_to do |format|
      if @misc_promotional_rule.update(misc_promotional_rule_params)
        format.html { redirect_to @misc_promotional_rule, notice: 'Misc promotional rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @misc_promotional_rule }
      else
        format.html { render :edit }
        format.json { render json: @misc_promotional_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misc_promotional_rules/1
  # DELETE /misc_promotional_rules/1.json
  def destroy
    @misc_promotional_rule.destroy
    respond_to do |format|
      format.html { redirect_to misc_promotional_rules_url, notice: 'Misc promotional rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misc_promotional_rule
      @misc_promotional_rule = MiscPromotionalRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def misc_promotional_rule_params
      params.require(:misc_promotional_rule).permit(:name, :discount_percentage, :discount_price)
    end
end
