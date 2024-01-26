class ExampleController < ApplicationController
   def example_handler
      if api_user_signed_in?
         render json: { "data": { "test": "OK" } }
      else
         render json: { "data": { "test": "KO" } }
      end
   end
end
