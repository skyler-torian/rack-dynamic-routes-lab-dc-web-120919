

class Application

    # @@items = [Item.new("Rice", 1.00), Item.new("Cat", 25.00)]

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
        
        
        if req.path.match(/items/)
          item_price = req.path.split("/items/").last
          item = @@items.find{|item| item.price == item_price}
        # else
        #   resp.write "Route not found"
        #   resp.status = 404 
        
        resp.write item.price
        end
    end
 
    resp.finish
end
  





