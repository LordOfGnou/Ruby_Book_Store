class ExampleController < ApplicationController
   def example_handler
      if api_user_signed_in?
         render json: { "data": { "test": "OK" } }
      else
         render json: { "data": { "test": "KO" } }
      end
   end

   def rick_roll
      render json: { "link": "https://youtu.be/dQw4w9WgXcQ" }
   end
end
