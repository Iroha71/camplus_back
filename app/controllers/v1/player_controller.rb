class V1::PlayerController < ApplicationController
    #プレイヤーを新規登録する
    def create
        @player = Player.new(player_params)#player_params＝Postデータをチェックするメソット
        if @player.save!
            render json: { message: 'プレイヤー登録成功' }
        else
            render json: { error: 'プレイヤー登録失敗' }
        end
    end
  
    def show
        @player = Player.find(params[:id])
        render json: @player
    end

    def update
        @player = Player.find(params[:id])
       if @player.update_attributes(player_params)
        render json:{ messeage: '提案学科登録成功'}
       else
        render json:{ error: '提案学科登録失敗'}
       end
    end

    private
    #ストロングパラメータ
    def player_params
        params.require(:player).permit(:name,:field_id)
    end

end
