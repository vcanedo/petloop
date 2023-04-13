class Collar < ApplicationRecord
  COLORS = %w[
    Vermelho Azul Verde Amarelo Preto Branco
    Laranja Roxo Rosa Cinza Marrom
  ]
  validates :name, :color, :size, :image_url, presence: true
  validates :color, acceptance: { accept: COLORS }
  # validate :end_date_after_start_date

  has_many :orders, dependent: :destroy
  # belongs_to :user

  # ////////////////////////////////////////////////////////////
  # add this when search is working ///////////////////////////
  # include PgSearch::Model
  # multisearchable against: %i[programming_language name]

  # pg_search_scope :search_programming_language,
  #                 against: %i[programming_language],
  #                 associated_against: {
  #                   user: %i[name]
  #                 },
  #                 using: {
  #                   tsearch: { prefix: true }
  #                 }
end
create_table "collars", force: :cascade do |t|
  t.string "name"
  t.string "color"
  t.string "secondary_color"
  t.string "image_url"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.string "size"
end
