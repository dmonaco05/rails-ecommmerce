require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  def test_save_success
    order = customers(:dom).orders.build(
      credit_card: credit_cards(:dom_visa))
    assert order.save,
      order.errors.full_messages.join(', ')
  end

  def test_save_no_credit_card
    order = customers(:dom).orders.build
    refute order.save
    assert_equal ["can't be blank"],
      order.errors[:credit_card_id]
  end

end