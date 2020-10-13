# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Response

  protect_from_forgery with: :exception

  def index; end

  def new_avatar; end

  def create_avatar; end
end
