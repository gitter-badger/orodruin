class API < Grape::API
  version 'v1.0', using: :header, vendor: 'orodruin'

  mount Users

  before do
    header['Access-Control-Allow-Origin'] = '*'
    header['Access-Control-Request-Method'] = '*'
  end
end
