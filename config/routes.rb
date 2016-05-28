Rails.application.routes.draw do
  devise_for :installs
  devise_for :users
  root 'main#main_start'


  get 'main_start' => "main#main_start"
  get 'main_makeplan' => "main#main_makeplan"
  get 'main_drag' => "main#main_drag"
  get 'main_trip' => "main#main_trip"
  get 'pract' => "main#practice"
  get 'main_contact' => "main#main_contact"
  get 'main_addplan' => "main#main_addplan"
  post 'plan_write' => "main#plan_write"
  post 'memo_write' => "main#memo_write"
  get 'main_addmemo' => "main#main_addmemo"
  get 'main_makememo/:plan_id' => "main#main_makememo"
  get '/main_addmemo/main_makememo/:plan_id' => "main#main_makememo"
  get 'main_index' => "main#index"
  get 'destroy/:plan_id' => "main#destroy" 
  get 'main_addmemo/:plan_id' => "main#main_addmemo" 
  get 'main_about' => "main#main_about"
  get 'main_contact' => "main#main_contact"

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
