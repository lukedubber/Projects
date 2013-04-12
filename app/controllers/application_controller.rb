class ApplicationController < ActionController::Base
  #include Repo
  protect_from_forgery


  before_filter :load_projects_list, :set_start_time

  def set_start_time
    @start_time = Time.now.usec
  end

  def load_projects_list
	@projects = Project.where(:show => true).find(:all, :order=> "status")
  end


  #@projects = Project.find(:all, :order => "status")

end
