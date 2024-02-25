class ImagesController < ApplicationController
  def index
    @images = Dir.glob("app/assets/images/**/*").reject { |e| File.directory?(e) }
  end
end