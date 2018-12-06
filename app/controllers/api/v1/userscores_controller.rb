class Api::V1::UserscoresController < ApplicationController

    def index
        @userscores = UserScore.all
        render json: @userscores
    end

    def create
        @userscore = UserScore.new(userScore_params)
        
        if @userscore.save
            render json: @userscore
        else
            render json: {error: 'Unable to create score.'}, status: 404
        end
    end

    private

    def userScore_params
        params.require(:userscore).permit(
        :user_id,
        :score_id
        )
    end



end
