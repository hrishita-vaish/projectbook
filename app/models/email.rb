class Email < ActiveRecord::Base
  attr_accessible :bcc, :body, :cc, :from, :project_id, :subject, :to
  belongs_to :project 
  validates :to, :from, :presence => true
end
