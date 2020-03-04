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
def render_soldout(num)
  if num < 1
    render :partial => "soldout"
  end
end 
