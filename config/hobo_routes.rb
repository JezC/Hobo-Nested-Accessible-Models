# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

HoboNestedModel::Application.routes.draw do


  # Resource routes for controller "organisations"
  get 'organisations(.:format)' => 'organisations#index', :as => 'organisations'
  get 'organisations/new(.:format)', :as => 'new_organisation'
  get 'organisations/:id/edit(.:format)' => 'organisations#edit', :as => 'edit_organisation'
  get 'organisations/:id(.:format)' => 'organisations#show', :as => 'organisation', :constraints => { :id => %r([^/.?]+) }
  post 'organisations(.:format)' => 'organisations#create', :as => 'create_organisation'
  put 'organisations/:id(.:format)' => 'organisations#update', :as => 'update_organisation', :constraints => { :id => %r([^/.?]+) }
  delete 'organisations/:id(.:format)' => 'organisations#destroy', :as => 'destroy_organisation', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "pages"
  get 'pages(.:format)' => 'pages#index', :as => 'pages'
  get 'pages/new(.:format)', :as => 'new_page'
  get 'pages/:id/edit(.:format)' => 'pages#edit', :as => 'edit_page'
  get 'pages/:id(.:format)' => 'pages#show', :as => 'page', :constraints => { :id => %r([^/.?]+) }
  post 'pages(.:format)' => 'pages#create', :as => 'create_page'
  put 'pages/:id(.:format)' => 'pages#update', :as => 'update_page', :constraints => { :id => %r([^/.?]+) }
  delete 'pages/:id(.:format)' => 'pages#destroy', :as => 'destroy_page', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "sections"
  get 'sections(.:format)' => 'sections#index', :as => 'sections'
  get 'sections/new(.:format)', :as => 'new_section'
  get 'sections/:id/edit(.:format)' => 'sections#edit', :as => 'edit_section'
  get 'sections/:id(.:format)' => 'sections#show', :as => 'section', :constraints => { :id => %r([^/.?]+) }
  post 'sections(.:format)' => 'sections#create', :as => 'create_section'
  put 'sections/:id(.:format)' => 'sections#update', :as => 'update_section', :constraints => { :id => %r([^/.?]+) }
  delete 'sections/:id(.:format)' => 'sections#destroy', :as => 'destroy_section', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  put 'users/:id/accept_invitation(.:format)' => 'users#do_accept_invitation', :as => 'do_user_accept_invitation'
  get 'users/:id/accept_invitation(.:format)' => 'users#accept_invitation', :as => 'user_accept_invitation'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "websites"
  get 'websites(.:format)' => 'websites#index', :as => 'websites'
  get 'websites/new(.:format)', :as => 'new_website'
  get 'websites/:id/edit(.:format)' => 'websites#edit', :as => 'edit_website'
  get 'websites/:id(.:format)' => 'websites#show', :as => 'website', :constraints => { :id => %r([^/.?]+) }
  post 'websites(.:format)' => 'websites#create', :as => 'create_website'
  put 'websites/:id(.:format)' => 'websites#update', :as => 'update_website', :constraints => { :id => %r([^/.?]+) }
  delete 'websites/:id(.:format)' => 'websites#destroy', :as => 'destroy_website', :constraints => { :id => %r([^/.?]+) }

  namespace :admin do


    # Lifecycle routes for controller "admin/users"
    post 'users/invite(.:format)' => 'users#do_invite', :as => 'do_user_invite'
    get 'users/invite(.:format)' => 'users#invite', :as => 'user_invite'

    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end
