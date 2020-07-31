require 'rails_helper'

describe MoviesController do
  describe 'find movies with same director' do
    it 'should call the model method that finds movies with same director' do
      Movie.should_receive(:same_directors).with("George Lucas")
      get :by_director, {:id => 1}
    end
    it 'should select the similar template for rendering when movie has a director' do
      Movie.stub(:same_directors).and_return('Star Wars')
      get :by_director, {:id => 1}
      response.should render_template('by_director')
    end
    it 'should make the movies with the same direactor available to that template' do
      fake_movie = double('Movie')
      fake_results = [double('Movie'), double('Movie')]
      #Movie.stub(:same_directors).and_return([])
    end
  end
end