Rails.application.routes.draw do
  get 'welcome/about'
  get 'welcome/agricosmetica'
  get 'welcome/index'
  # root  'inquiry#index'
  root 'welcome#index'
  get   'inquiry'         => 'inquiry#index'     # 入力画面
  post  'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post  'inquiry/thanks'  => 'inquiry#thanks'    # 送信完了画面
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
