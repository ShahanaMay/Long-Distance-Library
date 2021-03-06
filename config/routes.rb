LongDistanceLibrary::Application.routes.draw do
  root to: "static_pages#home"
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/email"
  end

  resources :books, :genres, :formats
end
