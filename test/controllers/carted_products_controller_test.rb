require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    @supplier = Supplier.create(name: "Store", email: "store@test.com", phone_number: "3223232")
    @product = Product.create(supplier_id: @supplier.id, name: "Item", price: 10, description: "this is an item")
    @carted_product = CartedProduct.create(user_id: @user.id, product_id: @product.id, quantity: 2, status: "carted")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/carted_products.json",
      headers: {"Authorization" => "Bearer #{@jwt}"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 1, data.length
  end

  test "create" do
    assert_difference "CartedProduct.count", 1 do
      post "/carted_products.json",
       params: {product_id: @product.id, quantity: 2},
       headers: {"Authorization" => "Bearer #{@jwt}"}
      assert_response 200

      data = JSON.parse(response.body)
      assert_equal "carted", data["status"]
      assert_equal 2, data["quantity"]
    end
  end

  test "show" do
    get "/carted_products/#{CartedProduct.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "order_id", "quantity", "status", "product", "user", "order"], data.keys
  end

  test "update" do
    carted_product = CartedProduct.first
    patch "/carted_products/#{carted_product.id}.json", params: { user_id: 1, product_id: 1, quantity: 1, status: "carted", order_id: 1 }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 1, data["quantity"]
    assert_equal "carted", data["status"]
  end

  test "destroy" do
    delete "/carted_products/#{@carted_product.id}.json",
      headers: {"Authorization" => "Bearer #{@jwt}"}
    assert_response 200

    @carted_product.reload
    assert_equal "removed", @carted_product.status
  end
end
