class ProjectsRepo 
  require 'base64'
  require 'open-uri'
  require 'json'

  def git_repo(repo) return JSON.parse(open("https://api.github.com/repos/lukedubber/"+repo).read) end

  def git_repo_commits(repo)  return JSON.parse(open("https://api.github.com/repos/lukedubber/"+repo+"/commits").read) end

  def git_repo_readme(repo)  return JSON.parse(open("https://api.github.com/repos/lukedubber/"+repo+"/readme").read) end

  def test2
	return "test"
  end
end
