class ManageController < ApplicationController

  def index
    @arr = ["banana","paper","chicken"]
    @id = params["id"]
    @name = params["name"]
  end

  def home
    #redirect_to(:action => "index",:id=>10, :name=>"nadjmo") #if this def in another controller add :controller => "name_controller",
  end
end
