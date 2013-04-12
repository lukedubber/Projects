class HomeController < ApplicationController
require 'open-uri'
require 'json'
#  before_filter :load_projects_list
  #caches_action :git_info
  before_filter :git_info
  @@offset_increment = 5

  def git_info
	@json_object = JSON.parse(open("https://api.github.com/users/lukedubber/repos").read)

  end
  def index
	@offset_increment = @@offset_increment
	@updates_count = Update.count 
	@updates = Update.order("date DESC").order("id DESC").limit(5).offset(params[:offset])#.reverse!
	#@updates = Update.all #.reverse!
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
=begin
  def load_projects_list
	@projects = Project.where(:show => true).find(:all, :order=> "status")
  end

=end
  #@projects = Project.find(:all, :order => "status")
end
