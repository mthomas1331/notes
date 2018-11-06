Rails.application.routes.draw do

  root 'home#home'

  get 'contact', to:'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'request_contact', to:'home#request_contact'

end
