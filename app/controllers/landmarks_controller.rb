require 'pry'
class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/application/landmarks/index'
  end

  get '/landmarks/new' do
    erb :'/application/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/application/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    @landmark.save

    redirect "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/application/landmarks/edit'
  end

<<<<<<< HEAD
  patch '/landmarks/:id/edit' do
=======
  patch 'landmarks/:id/edit' do
    binding.pry
>>>>>>> 857133f40f88a9d25286457568f4f10f37b5508b
    @original_landmark = Landmark.find_by_id(params[:id])
    @original_landmark.update(params[:landmark])
    @original_landmark.save
    

    redirect "/landmarks/#{@original_landmark.id}"
  end
end
