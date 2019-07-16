
class QueerIconsController < ApplicationController


def index

@icons = QueerIcon.all

end

def homo

end

def show

  @icon = QueerIcon.find(params[:id])

end

def new
  @icon = QueerIcon.new
end

def create
 @icon = QueerIcon.new(queer_icon_params)
 if @icon.save
   redirect_to queer_icons_url
 else
   render :new
 end
end
def queer_icon_params

  {name: params[:queer_icon][:name] , quote: params[:queer_icon][:quote], img_url: params[:queer_icon][:img_url]}
end
end
