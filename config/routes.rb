Pomodori::Application.routes.draw do
  resources :pomodori
  resources :tasks

  root :to => 'high_voltage/pages#show', id: 'home'
end
