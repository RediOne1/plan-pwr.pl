Epure::Application.routes.draw do
  resources :schedules

  resources :schedules do
    resources :entries, :except => [:show] do
      collection do
        get :search_course_names
        get :search_lecturers
      end
    end

    get "color_schemes", :to => "color_schemes#index"
    post "color_schemes/reset", :to => "color_schemes#reset"
    post "color_schemes/bw", :to => "color_schemes#bw"
  end

  get "/home", :to => "schedules#index"
  get "/srednia", :to => "application#avg"
  post "/srednia", :to => "application#avg"
  get "/akz/katalog", :to => "application#akz_catalogue"
  get "/akz", :to => "application#akz"
  get "/:slug", :to => "schedules#show", :as => :schedule_slug
  root :to => "schedules#index"
end
