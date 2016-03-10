class DiashowController < ApplicationController
    
def show
    @pictures = Picture.all
end

end
