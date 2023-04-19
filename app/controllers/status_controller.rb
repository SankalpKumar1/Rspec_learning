class StatusController < ApplicationController
  def status
    render( json: {"status":"okay"})
  end
end
