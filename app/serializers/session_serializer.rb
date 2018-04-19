class SessionSerializer < ActiveModel::Serializer
  attributes :id, :email, :token
end