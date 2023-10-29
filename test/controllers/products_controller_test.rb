require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "tax", "total", "is_discounted?", "image_url", "description"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: {name: "Persian ivy", price: 20.00,image_url: "https://fossilcreektreefarm.com/cdn/shop/products/PersianIvy.jpg?v=1676581590", description: "It is an evergreen climbing plant, growing to 30 m high where suitable surfaces 
      are available, and also growing as ground cover where there are no vertical surfaces."}
      assert_response 200
    end
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }
    assert_response = 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end
end
