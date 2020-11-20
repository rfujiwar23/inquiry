class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :company, :email, :phone, :message

  validates :name, :presence => {:message => '名前を入力してください'}
  validates :company, :presence => {:company => '会社名を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
  validates :phone, :presence => {:company => '電話番号を入力してください'},
            :numericality => true,
            :length => { :minimum => 10, :maximum => 11}
end
