class Orodruin::API < Grape::API
  version 'v1.0', using: :header, vendor: 'orodruin'

  mount Orodruin::Users
end
