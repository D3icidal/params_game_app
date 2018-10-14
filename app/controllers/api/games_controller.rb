class Api::GamesController < ApplicationController

  def test
    render "test.json.jbuilder"
  end
end
