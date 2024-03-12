# frozen_string_literal: true

class ImageController < ApplicationController
  rescue_from JpgCreator::Errors::InvalidSlug, with: :invalid_slug

  def show
    jpg_creator = JpgCreator.new(image_slug)
    jpg_creator.validate_slug!
    jpg_creator.create

    send_file jpg_creator.path, type: 'image/jpg', disposition: 'inline'
  end

  private

  def image_slug
    params[:id].dasherize.downcase
  end

  def invalid_slug
    redirect_to '/a-valid-path-with-letters-dashes-and-spaces.jpg'
  end
end
