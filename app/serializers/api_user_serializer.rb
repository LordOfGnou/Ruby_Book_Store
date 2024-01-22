class ApiUserSerializer
  include JSONAPI::Serializer
  attributes :id, :email
end
