class PagesController < ApplicationController
  def home
  end

  def hello_world
    Pusher['test_channel'].trigger('my_event', {
      :message => 'hello world'
    })
    render :nothing => true
  end
end
