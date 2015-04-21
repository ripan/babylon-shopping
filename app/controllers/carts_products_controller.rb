class CartsProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_carts_product, only: [:show, :edit, :update, :destroy]

  # GET /carts_products
  # GET /carts_products.json
  def index
    @carts_products = current_user.cart.carts_products rescue []
    @cart_total = cart_total
    @cart_total_after_discount = cart_total_after_discount
    @misc_promotional_rule = MiscPromotionalRule.find_by_name('Cart')
    @cart_discount_percentage = 0
    if @misc_promotional_rule
      @cart_discount_percentage =  @misc_promotional_rule.discount_percentage if cart_total > @misc_promotional_rule.discount_price
    end
    @cart_items_discount = 8
    @cart_total_after_discounted_items = 5

  end

  # GET /carts_products/1
  # GET /carts_products/1.json
  def show
  end

  # GET /carts_products/new
  def new
    @carts_product = CartsProduct.new
  end

  # GET /carts_products/1/edit
  def edit
  end

  # POST /carts_products
  # POST /carts_products.json
  def create

    if current_user.cart.nil?
      current_user_cart = current_user.build_cart
      current_user_cart.save
    else
      current_user_cart = current_user.cart
    end

    @carts_product = CartsProduct.new
    @carts_product.cart_id = current_user_cart.id
    @carts_product.product_id = params[:product_id]
    @carts_product.quantity = params[:quantity]


    respond_to do |format|
      if @carts_product.save
        format.html { redirect_to :back, notice: 'Product was successfully added.' }
        format.json { render :show, status: :created, location: @carts_product }
      else
        format.html { render :new }
        format.json { render json: @carts_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts_products/1
  # PATCH/PUT /carts_products/1.json
  def update
    respond_to do |format|
      if @carts_product.update(carts_product_params)
        format.html { redirect_to carts_products_url, notice: 'Quantity was successfully updated.' }
        format.json { render :show, status: :ok, location: @carts_product }
      else
        format.html { render :edit }
        format.json { render json: @carts_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts_products/1
  # DELETE /carts_products/1.json
  def destroy
    @carts_product.destroy
    respond_to do |format|
      format.html { redirect_to carts_products_url, notice: 'Carts product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_carts_product
    @carts_product = CartsProduct.find(params[:id])
  end

  def cart_total
    @cart_total = @carts_products.collect{|cp| cp.product.price*cp.quantity}.sum
    return @cart_total
  end

  def cart_total_after_discount
    @cart_total_after_discount = cart_total
    @misc_promotional_rule = MiscPromotionalRule.find_by_name('Cart')
    if @misc_promotional_rule && (@misc_promotional_rule.discount_percentage > 0) && (cart_total > @misc_promotional_rule.discount_price)
      @cart_total_after_discount = @cart_total * (100 - @misc_promotional_rule.discount_percentage) / 100
    end
    return @cart_total_after_discount
  end

  def cart_total_after_discounted_items
    @cart_total_after_discounted_items = cart_total
    return @cart_total_after_discount
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  def carts_product_params
    params.require(:carts_product).permit(:cart_id, :product_id, :quantity)
  end
end
