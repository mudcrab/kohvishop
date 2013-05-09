<%= render :partial => "invoice/header" %>
These are your items

<%= render :partial => "invoice/item", :collection => @items %>
<%= render :partial => "invoice/footer" %>