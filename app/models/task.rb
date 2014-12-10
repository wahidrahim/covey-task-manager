class Task < ActiveRecord::Base
	before_validation :defaults

	validates :name, length: { minimum: 1 }
	validates :urgency, numericality: { only_integer: true }, inclusion: 0..100
	validates :importance, numericality: { only_integer: true }, inclusion: 0..100
	validates :quadrant, numericality: { only_integer: true }, inclusion: 1..4
	validates :complete, inclusion: { in: [true, false] }

	def defaults
		self.urgency ||= 0
		self.importance ||= 0
		self.complete = false if self.complete.nil?

		if urgency >= 50 && importance >= 50
			self.quadrant = 1
		elsif urgency < 50 && importance >= 50
			self.quadrant = 2
		elsif urgency >= 50 && importance < 50
			self.quadrant = 3
		elsif urgency < 50 && importance < 50
			self.quadrant = 4
		end

		self.mean = (self.urgency + self.importance) / 2
	end
end
