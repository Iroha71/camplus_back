class V1::PlayerController < ApplicationController
    #プレイヤーを新規登録する
    def create
        @player = Player.new(player_params)#player_params＝Postデータをチェックするメソット
        if @player.save!
            render json: @player
        else
            render json: { error: 'プレイヤー登録失敗' }
        end
    end
    
    def show
        @player = Player.find(params[:id])
        render json: @player
    end

    #プレイヤー情報更新
    def update
        @player = Player.find(params[:id])
        recommend_field_id = @player.decide_recommend_field(params[:system], params[:network], params[:embeded])
        if @player.update_attributes(field_id: recommend_field_id)
            render json:{ messeage: '提案学科登録成功'}
        else
            render json:{ error: '提案学科登録失敗'}
        end
    end
     
    #セーブデータを保存
    def saving
        @player = Player.find(params[:id])
        if @player.update_attributes(savedata: params[:savedata])
            render json:{ messeage: 'セーブしました'}
        else
            render json:{ error: 'セーブに失敗しました'}
        end
    end

    
    #プレイヤー情報削除
    def destroy
        if@player = Player.find(params[:id]).destroy
            render json: { messeage: 'プレイヤー削除成功'}
        else
            render json: { error: 'プレイヤー削除失敗'}
        end
    end


    private
    #ストロングパラメータ
    def player_params
        params.require(:player).permit(:name,:field_id)
    end

end
