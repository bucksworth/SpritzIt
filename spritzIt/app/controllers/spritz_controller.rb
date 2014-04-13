class SpritzController < ApplicationController
def spritz_it
	@length = Hash.new
	@length['0-30'] = Spritz.select(:length).group(:length).having("length > 0 AND length < 31").count.values.sum
	@length['31-60'] = Spritz.select(:length).group(:length).having("length > 30 AND length < 61").count.values.sum
	@length['61-90'] = Spritz.select(:length).group(:length).having("length > 60 AND length < 91").count.values.sum
	@length['91-120'] = Spritz.select(:length).group(:length).having("length > 90 AND length < 121").count.values.sum
	@length['121-150'] = Spritz.select(:length).group(:length).having("length > 120 AND length < 151").count.values.sum
	@length['150+'] = Spritz.select(:length).group(:length).having("length > 150 ").count.values.sum
end

def create
    @sp = Spritz.create(:url => params[:url], :text => params[:text], :length => params[:text].length, :country => params[:country])
end

def show
    @text = Spritz.find(2).text.length
end

end