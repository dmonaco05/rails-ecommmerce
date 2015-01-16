require 'test_helper'

class ManageProductsTest < ActionDispatch::IntegrationTest

  def test_product_lifecycle
    visit "/admin/products"
    fill_in "Email", with: 'admin@example.com'
    fill_in "Password", with: 'test'
    click_on "Log In"
    click_on "Create new product"
    fill_in "Name", with: "TestProd1"
    fill_in "Price", with: "101010.01"
    fill_in "Image url", with: "image/test.jpg"
    click_on "Create Product"
    assert page.has_content?(/Product.*was created/)

    # save_and_open_page

    click_on "TestProd1"
    click_on "Edit"
    fill_in "Price", with: "91999999999.91"
    click_on "Update Product"
    assert page.has_content?(/Product.*was updated/)
    assert page.has_content?('$91,999,999,999.91')

    # save_and_open_page

    click_on "TestProd1"
    click_on "Delete"
    assert page.has_no_content?('$91,999,999,999.91')

    # save_and_open_page
  end

end
