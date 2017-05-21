class Payment < ApplicationRecord
	belongs_to :loan

	validates :pay, presence: true, numericality: { greater_than: 0 }
end
