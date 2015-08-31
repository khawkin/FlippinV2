require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { age: @product.age, averageNewPrice: @product.averageNewPrice, averageUsedPrice: @product.averageUsedPrice, bidPrice?: @product.bidPrice?, description: @product.description, industry_id: @product.industry_id, name: @product.name, newPrice: @product.newPrice, productCredibility: @product.productCredibility, productLocation: @product.productLocation, quality: @product.quality, quantity: @product.quantity, sellingTime: @product.sellingTime, third_party_id: @product.third_party_id, type: @product.type, usedPrice: @product.usedPrice }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { age: @product.age, averageNewPrice: @product.averageNewPrice, averageUsedPrice: @product.averageUsedPrice, bidPrice?: @product.bidPrice?, description: @product.description, industry_id: @product.industry_id, name: @product.name, newPrice: @product.newPrice, productCredibility: @product.productCredibility, productLocation: @product.productLocation, quality: @product.quality, quantity: @product.quantity, sellingTime: @product.sellingTime, third_party_id: @product.third_party_id, type: @product.type, usedPrice: @product.usedPrice }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
