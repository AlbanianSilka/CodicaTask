# frozen_string_literal: true
# I decided to use octokit gem instead of github_api because it is easier to use
require 'octokit'

class Task3

  # IMPORTANT insert your github access token instead of field 'your token' in initialize method
  def initialize
    super
    @client = Octokit::Client.new(:access_token => 'your token')
  end

  def user_info
    user = @client.user
    # in this method we will take user name; total number of his repos and total number of his followers
    puts(user.name)
    puts(user.public_repos)
    puts(user.followers)
  end

  def list_repos
    # in this method we will receive all public repos of the user and their links
    @client.repos.each do |repo|
      puts repo.name
      puts repo.url
    end
  end

  def list_orgs
    # in this method we will receive all user public organizations links
    @client.organizations.each do |org|
      puts org.url
    end
  end
end

# creating new user and getting through all of the class methods
new_user = Task3.new
new_user.user_info
new_user.list_repos
new_user.list_orgs
