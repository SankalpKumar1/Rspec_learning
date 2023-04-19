Rails.application.routes.draw do
  get 'consoles/consoles'
  get 'status/status'
  match '/status', to: 'status#status', via: :get
  match '/consoles', to: 'consoles#consoles', via: :get
  match '/consoles_with_manufacturer', to: 'consoles#consoles_with_manufacturer', via: :get
  match '/consoles_with_manufacturer/:manufacturer', to: 'consoles#consoles_with_M', via: :get
end
