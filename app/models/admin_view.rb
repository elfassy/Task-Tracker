class AdminView < ActiveRecord::Base
  # attr_accessible :title, :body


  
  def search
  	@results = AdminVerified.search(params[:search])
  end

 def self.call_import
  	#f = File.open("calls.csv")
    #f.each do |date, num, time, ext, name, state|
  		#CallLogs.create{
        #:date => date,
        #:num => num,
        #:time => time,
        #:ext => ext,
        #:name => employee,
        #:state => state,
      #}
  	#end
  	#f.close
 end


end
