class API < Grape::API
  version 'v1.0', using: :header, vendor: 'orodruin'

  mount Users

  add_swagger_documentation

  before do
    header['Access-Control-Allow-Origin'] = '*'
    header['Access-Control-Request-Method'] = '*'
  end
end
