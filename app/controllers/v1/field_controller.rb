class V1::FieldController < ApplicationController
    #学科を提案数を増やす
    def increment_total_num
        @field = Field.find(params[:id]).plus_total_num()
        if @field.save!
            render json: { message: '提案総数更新成功' }
        else
            render json: { error: '学科が存在しません' }
        end
    end

    #学科情報を取得
    def show
        @field = Field.find(params[:id])
        if @field
            render json: @field
        else
            render json: { error:'学科が存在しません'}
        end
    end

    #全学科情報を取得
    def index
        @field = Field.all().order(:id)
        if @field
            render json: @field
        else
            render json: { error:'データが存在しません'}
        end
    end

        
end
