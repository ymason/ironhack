Rails.application.routes.draw do

get '/' => 'site#home'

get '/contact' => 'site#contact'

end
