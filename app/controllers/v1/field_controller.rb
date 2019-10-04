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
end
