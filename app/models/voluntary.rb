class Voluntary < ActiveRecord::Base
  has_many :localisations, as: :localisable

  validates :email, :age, presence: true

  def positions
    if localisations.any?
      localisations.map(&:position)
    end
  end

end
