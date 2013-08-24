Pomodori::Application.routes.draw do
  resources :tasks do
    resources :pomodori do
      get 'track', on: :collection
    end
  end

  root :to => 'high_voltage/pages#show', id: 'home'
end
