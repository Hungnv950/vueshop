# frozen_string_literal: true

module Api
  module V1
    module User
      class ProfilesController < ApplicationController
        def create
          @user = User.first
        end
      end
    end
  end
end
