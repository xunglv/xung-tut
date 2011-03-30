require 'net/http'
class DictionaryController < ApplicationController
	def index
		
	end
	
	def latest_words
		num = params[:num]
		puts "num words: #{num}"
		#:conditions=>["created_at <= (?) and created_at >=(?)", Time.now, Time.now - 1.day]
		words = Word.find( :all, :order => "updated_at desc", :limit=>num )
		puts "word #{words} len: #{words.length}"
		respond_to do |format|
			format.json {render :text => words.to_json, :layout => false}
		end
	end
	
	def lookup
		keyword = params[:word]
		#puts "in lookup action #{keyword}"
		
		
		url_str = "http://1tudien.com/engine/?title=#{keyword}&d=1,2,3,4,5,6,7,8,9&pt=f"
		res = Net::HTTP.get_response(URI.parse(URI.encode(url_str)))
		
		#puts "=============contents: #{req.body}"
		#respond_to do |format|
		#	format.json {render :text => "teststets".to_json, :layout => false}
		#end
		
		#if res.body.index("Không tìm thấy kết quả.")
		#	puts "khong tim thay tu nay"
		#end
		
		respond_to do |format|
			format.html {render :text => res.body, :layout => false}
		end
		
		
		@word = Word.find_by_word(keyword);
		
		if @word.nil? then
			#puts  "new word"
			@word = Word.new
			#puts "word saved"
		end
		
		@word.updated_at  = Time.now
		@word.word = keyword
		@word.save
		
		
	end
end
