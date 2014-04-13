class SpritzController < ApplicationController
def spritz_it

	#get length hash
	@length = Hash.new
	@length['0-150'] = Spritz.select(:length).group(:length).having("length > 0 AND length < 31").count.values.sum
	@length['151-300'] = Spritz.select(:length).group(:length).having("length > 150 AND length < 301").count.values.sum
	@length['301-450'] = Spritz.select(:length).group(:length).having("length > 300 AND length < 451").count.values.sum
	@length['451-600'] = Spritz.select(:length).group(:length).having("length > 450 AND length < 601").count.values.sum
	@length['601-750'] = Spritz.select(:length).group(:length).having("length > 600 AND length < 751").count.values.sum
	@length['750+'] = Spritz.select(:length).group(:length).having("length > 750 ").count.values.sum


	# other_nums = Spritz.group(:url).count.values.sort.reverse.drop(9).sum if Spritz.group(:url).count.count > 9
	if Spritz.group(:url).count.count > 9
		hashURL = Spritz.group(:url).count.to_a.sort_by { |arr| -arr[1] }
		sum_rest = hashURL.drop(9).values.inject(0, :+)
		@urls = Hash[hashURL.take(9) >> ["Other", sum_rest]]
	else
		@urls = Spritz.group(:url).count 
	end
end

def create
    @sp = Spritz.create(:url => params[:url].split('//')[1].split('/')[0], :text => params[:text], :length => params[:text].split(" ").size, :country => params[:country])

end

end