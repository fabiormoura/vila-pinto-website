VilaPintoWebsite::Application.routes.draw do

  resources :contacts, :only => [:new, :create]

  root :to => 'welcome#index'

  match '/cejak' => 'cejak#index', as: :cejak
  match '/ctvp' => 'ctvp#index', as: :ctvp
  match '/vovo' => 'vovo#index', as: :vovo

  match '/ctvp/materiais' => 'ctvp#materiais', as: :ctvp_materiais
  match '/ctvp/sponsors' => 'ctvp#sponsors', as: :ctvp_sponsors

  match '/vovo/sponsors' => 'vovo#sponsors', as: :vovo_sponsors
  match '/vovo/donation' => 'vovo#donation', as: :vovo_donation

  match '/cejak/projects' => 'cejak#projects', as: :cejak_projects

  ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')
end
