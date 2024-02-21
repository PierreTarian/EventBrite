class Event < ApplicationRecord

    has_many :attendances
    has_many :users, through :attendances
    belongs_to :user

    validates :start_date,
    presence: true,
     def star_date
         if self.date.past?
        errors.add(:date, 'start_date')
        end
     end

    validates :duration,
    presence: true,
    numericality: {greater_than_or_equal_to: 0}
    validate :multiple_by_5
      def multiple_by_5
        unless duration.to_i%5 == 0
          errors.add(:duration, "la durée doit être un multiple de 5")
        end
      end

    validates :title,
    presence: true,
    lenght: {minimum: 5, maximum: 140}

    validates :description,
    presence: true,
    lenght: {minimum: 20, maximum 1000}

    validates: price,
    presence: true,
    lenght: {minimum: 1, maximum 1000} 
    #rajouter pas de gratuité pour première version

    validates :location,
    presence: true
end
