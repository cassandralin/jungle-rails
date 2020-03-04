module ApplicationHelper
end
def render_cart_conditionally
  if enhanced_cart.length != 0
    puts "----->#{enhanced_cart.length}"
    render :partial => 'cart'
  else
    render :partial => 'empty_cart'

  end
end 