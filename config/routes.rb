Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :boards
  get 'board_index' => "boards#index"
  root 'main#main_start'
  
  get 'jayoung_practice' => "main#jayoung_practice"


  get 'main_start' => "main#main_start"
  get 'main_index' => "main#index"
  get 'main_contact' => "main#main_contact"

  get 'main_addplan' => "main#main_addplan"
  get 'main_makeplan' => "main#main_makeplan"
  get 'destroy_plan/:plan_id' => "main#destroy_plan" 
  post 'plan_write' => "main#plan_write"

  get 'main_addmemo(/:id)' => "main#main_addmemo"
  get 'main_makememo(/:id)' => "main#main_makememo"
  get 'main_memo(/:id)' => "main#main_memo"
  get 'destroy_memo/:memo_id' => "main#destroy_memo"
  post 'memo_write' => "main#memo_write"
  post 'memo_update/:memo_id' => "main#memo_update"
  
  get 'main_about' => "main#main_about"
  get 'main_contact' => "main#main_contact"
  get 'main_viewmemo' => "main#main_viewmemo"
  
  get 'board_index' => "board#board_index"
  get 'main_addplan(/:id)' => "main#main_addplan"
  

  
  #가처분 직전 
  get 'main_addmemo/:plan_id' => "main#main_addmemo" 
  get 'main_makememo/:plan_id' => "main#main_makememo"
  get '/main_addmemo/main_makememo/:plan_id' => "main#main_makememo"
  get 'main_drag' => "main#main_drag"
  get 'main_trip' => "main#main_trip"

  
#  devise_scope :user do
#  get "/login" => "devise/sessions#new"
#  end
  
#  devise_scope :user do
#  delete "/logout" => "devise/sessions#destroy"
#  end
  
#  devise_for :users, :skip => [:sessions]
#  as :user do
#    get 'signin' => 'devise/sessions#new', :as => :new_user_session
#    post 'signin' => 'devise/sessions#create', :as => :user_session
#    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
#       :via => Devise.mappings[:user].sign_out_via
#  end
  
# devise_for :users, :path => 'main/main_index', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
end
