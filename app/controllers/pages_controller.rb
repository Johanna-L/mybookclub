class PagesController < ApplicationController
  def home
    @admin = Person.admin
    @friends = Person.friends
  end
end
