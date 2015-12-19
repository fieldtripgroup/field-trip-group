Rails.application.routes.draw do

  get 'for_teachers/index'

  root 'welcome#index'
  get 'welcome' => 'welcome#index'
  get 'field-notes' => 'field_notes#index'
  get 'field-notes/fitzgerald-marine-reserve' => 'field_notes#fitzgerald-marine-reserve'
  get 'field-notes/elephant-seal-colony' => 'field_notes#elephant-seal-colony'
  get 'field-notes/hidden-villa-farm' => 'field_notes#hidden-villa-farm'

end
