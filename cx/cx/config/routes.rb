Rails.application.routes.default_url_options[:host] = 'vieclamvanphong.com'
Rails.application.routes.draw do

 

  devise_for :nguoitimviecs
  devise_for :nhatuyendungs
  resources :ungtuyens
  resources :thumails
  root 'home#index'
  resources :vieclams
   get 'nhatuyendung/index'
    get 'viec-lam', to: 'home#index'
  get 'viec-lam/:diadiemurl', to: 'home#index6'
   get 'tim-viec-lam/:nghanhngheurl', to: 'home#index7'
   get 'viec-lam/:diadiem/:id', to: 'vieclams#show'
  
    get 'home/:id/:tencongtyurl', to: 'home#index3'
	 get 'home/index4'
   get 'home/index2'
  get 'home/:id/index4', to: 'home#index4'
  get 'home/quan-ly-viec-lam', to: 'home#index4'
  get 'home/index5'
   get 'thong-tin-nha-tuyen-dung/:id/index', to: 'nhatuyendung#index'
  get 'home/index'
  get 'vieclams/:id/nopcv', to: 'vieclams#nopcv'
   get 'vieclams/:id/edit2', to: 'vieclams#edit2'
   put 'vieclams/:id/update2', to: 'vieclams#update2'
   
      get 'thong-tin-nha-tuyen-dung/:id/:tencongtyurl', to: 'nhatuyendung#index'
    get 'viec-lam/:diadiem/:id/ung-tuyen', to: 'vieclams#edit2'
 
  delete 'nguoitimviecs/sign_out(.:format)', to: 'devise/sessions#destroy'
 
  get 'viec-lam/:diadiemurl', to: 'home#index6'
match '*path', via: :all, to: redirect('/404')
end
