<%= render :partial => "invoice/header" %>
<%= render :partial => "invoice/item", :collection => @items %>
<%= render :partial => "invoice/footer" %>