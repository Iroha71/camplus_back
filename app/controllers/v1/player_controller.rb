class V1::PlayerController < ApplicationController
    #特定のプレイヤー情報を取得する
    def show
        @player = Player.find(params[:id])
        render json: @player
    end
end
