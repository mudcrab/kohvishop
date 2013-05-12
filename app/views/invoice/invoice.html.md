<%= raw ( render :partial => "invoice/header", :locals => { :checkout => @checkout } ) %>
<%= raw ( render :partial => "invoice/item", :collection => @items ) %>
<%= raw ( render :partial => "invoice/footer" ) %>
