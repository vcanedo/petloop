class Collar < ApplicationRecord
  COLORS = %w[
    Vermelho Azul Verde Amarelo Preto Branco
    Laranja Roxo Rosa Cinza Marrom
  ]
  validates :name, :color, :size, :image_url, presence: true
  validates :color, acceptance: { accept: COLORS }
  # validate :end_date_after_start_date

  has_many :orders, dependent: :destroy
  # belongs_to :user // used with devise

  # ////////////////////////////////////////////////////////////
  # add this when search is working ///////////////////////////
  # //////////////////////////////////////////////////////////
  # include PgSearch::Model
  # multisearchable against: %i[name color secondary_color size]

  # pg_search_scope :search_programming_language,
  #                 against: %i[programming_language],
  #                 associated_against: {
  #                   user: %i[name]
  #                 },
  #                 using: {
  #                   tsearch: { prefix: true }
  #                 }
end
