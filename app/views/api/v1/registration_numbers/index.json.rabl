if @user.nil?
     node(:error_msg) {"unauthorized"}
elsif @registration_number.nil?
       node(:error_msg) {"Not Found"}
 else
 object @registration_number
 attributes :name, :office
 node(:locality_count) {@registration_number.localities.size}
 
 child :localities do
   attributes :name
 end

 child :state do
   attributes :name
 end
end

  