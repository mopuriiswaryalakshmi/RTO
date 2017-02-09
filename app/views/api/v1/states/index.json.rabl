if @user.nil?
     node(:error_msg) {"unauthorized"}
elsif @state.nil?
       node(:error_msg) {"Not Found"}
 else
 object @state
 attributes :name
 node(:RegistrationNumbers_count) {@state.registration_numbers.size}
 
 child :registration_numbers do
   attributes :name, :office
 child :localities do
   attributes :name
 end
end
end