class GiaphaController < ApplicationController
	def index
		render :file => Rails.root.join('public', 'giapha.xhtml'), :layout => false
	end
	
	def lookup
		
	end
end
