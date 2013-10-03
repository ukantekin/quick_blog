 class PostsController < ApplicationController
   before_filter :authenticate, :except => [ :index, :show ]
  
   // … all your actions go in here
  
   private
   def authenticate
     authenticate_or_request_with_http_basic do |name, password|
       name == "ukantekin" && password == "1453.1453"
     end
   end
 end  