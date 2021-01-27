require 'open-uri'
require 'csv'

class HomeController < ApplicationController

  def index
  end

  def upload_csv
  	@email_list = []
  	@csv_file1 = CSV.read(params["csv1"].path)
  	@csv_file2 = CSV.read(params["csv2"].path)
	@csv_file1.each do |x|
	  	file2_data = @csv_file2.find{|a| a[0] == x[0]}
	  	if !(file2_data[params['concern'].to_i].include? x[params['concern'].to_i] or x[params['concern'].to_i].include? file2_data[params['concern'].to_i])
	  		@email_list << file2_data[0]
	  	end
	end
  end

end
