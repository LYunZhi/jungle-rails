class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(order)
    @order = order
    mail(to: 'test@example.com', subject: "Your order #{order.id} has been completed")
  end
end
