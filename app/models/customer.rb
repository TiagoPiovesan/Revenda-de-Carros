class Customer < ActiveRecord::Base
  enum sex: [:Masculino, :Feminino]
  has_many :purchases
  has_many :sales

  validates :name, :email, uniqueness: true
  validates :name, :email, :birth, :cpf, :rg, :phone, :sex, presence: true
end
