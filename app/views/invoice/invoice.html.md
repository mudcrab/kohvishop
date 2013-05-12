<%= raw(render :partial => "invoice/header") %>
These are your items

<%= raw(render :partial => "invoice/item", :collection => @items) %>
<%= raw(render :partial => "invoice/footer") %>