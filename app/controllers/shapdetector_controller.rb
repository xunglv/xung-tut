class ShapdetectorController < ApplicationController
	def index
		render :file => Rails.root.join('public', 'shapedetector.html'), :layout => false
	end
end
