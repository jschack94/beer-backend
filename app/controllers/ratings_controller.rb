class RatingsController < ApplicationController

    def create
        Rating.create(brewery_id: params['brewery_id'], user_id: params['user_id'], number: params['rating'], notes: params['notes'])
        ratings = Rating.all
        render json: ratings
    end 

    def update
        rating = Rating.all.find(params['rating'])
        rating.update(number: params['number'], notes: params['notes'])
        ratings = Rating.all
        render json: ratings
    end 
