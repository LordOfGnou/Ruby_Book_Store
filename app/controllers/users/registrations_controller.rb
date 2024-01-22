# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(current_user, opts = [])
    if ressource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up successfully.'},
        data: ApiUserSerializer.new(current_user).serializable_hash[:data][:attributes]
      }
    else
      render json: {
        status: {message: "User couldn't be created succesfully. #{current_user.errors.full_messages.to_sentence}"}, status: :unprocessable_entity
      }
    end
  end

end
