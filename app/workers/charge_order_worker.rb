class ChargeOrderWorker
  include Sidekiq::Worker

  def perform(order_id)
    Order.find(order_id).charge_card
  end
end
