class Project < ActiveRecord::Base
  has_many :updates
  attr_accessible :category, :content, :show, :status, :title, :url, :platform, :language, :technologies_used, :repo_type, :repo
end
