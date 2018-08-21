class v1::BaseController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

end
