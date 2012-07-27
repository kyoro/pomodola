Pomodola::Application.routes.draw do
  root :to => "pages#index"

  get "/:channel" => "pages#show"
  get "/:channel/set/:count" => "pages#set"
  get "/:channel/get" => "pages#get"

end
