require 'ruby-openid'

class OpendIdController < ApplicationController
  def new
  end

  def create
  end

  def complete
  end

  protected
    def openid_consumer
      @openid_consumer ||= OpenID::Consumer.new(session, OpenID::FilesystemStore.new("#{RAILS_ROOT}/tmp/openid"))
    end
end
