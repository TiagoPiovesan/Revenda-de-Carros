class Car < ActiveRecord::Base
  enum status: [:Disponivel, :Indisponivel]
  enum sinister: [:Sim, :Não]
  has_many :purchases
  has_many :sales 

  validates :model, :brand, :color, :kilometer, :fipe, :board, :sinister, :status, :manufacture, presence: true
end
