Rails.application.routes.draw do
   root "top#index"
   get '/result', to: 'top#result'

   resources :municipalities, only: [] do
     resources :chomes, only: :index
   end
end
