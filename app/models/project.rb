class Project < ActiveRecord::Base
  attr_accessible :backup_coordinator, :cc, :charge_code, :ci_status, :coordinator, :created_on, :last_action, :name, :office_address, :pid, :project_id, :sponsor, :status, :url, :seq_id
 has_many :emails, :dependent => :destroy
 validates :charge_code, :name, :status, :presence => true

 #set_primary_key :project_id
 @counter_reset = 1
  # to generate project-id  
  def self.project_id_generator
  	# to generate 3 digit alpha-numeric sequence number
	 a = ('A'..'Z').to_a+(0..9).to_a
	 random_num = (1..3).collect { a[rand(a.size)] }.join
   # to generate unique 3 digit number that resets every month as 001
   		#if Date.today.day == 1 
   		#	flag = 1
   		#end
   		@project = Project.all.sort_by(&:created_at).reverse
	   #	if Project.last.created_at.strftime("%Y-%m") != Date.today.strftime("%Y-%m")
	   if Date.today.day == 1
	   	      @counter_reset = 1
	   	  else


	           	
	    @counter_reset = Project.last.try(:seq_id)
	    @counter_reset += 1
      end
          if(@counter_reset >= 10)
	         seq_no = "0" + @counter_reset.to_s
          else
	         seq_no = "00" + @counter_reset.to_s
          end

	
    project_id = (Date.today.year.to_s + '-' + Date.today.strftime("%m").to_s + '-' + seq_no + '-' + random_num)
  end

  def self.seq_id
  	 @counter_reset
  end

  end

 