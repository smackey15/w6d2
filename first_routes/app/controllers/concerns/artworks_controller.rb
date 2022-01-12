class ArtworksController < ApplicationController

    def index 
        @artworks = Artwork.find(params[:user_id]) 
        @user = User.find(params[:user_id])
        @artwork_shares = @user.artwork_shares
        render json: @artworks
        # render json: @artwork_shares    
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork.id)
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        redirect_to artwork_url
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

    



end