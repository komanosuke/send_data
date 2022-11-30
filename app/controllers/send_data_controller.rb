class SendDataController < ApplicationController
    require 'json'
    protect_from_forgery with: :exception, only: :index

    def index
        # 読み込み時に一度パースが必要
        json_request = JSON.parse(request.body.read)

        # パース後のデータを表示
        @data1 = "json_request => #{json_request}"
        @data2 = "#{json_request.to_hash}"

        # 各要素へのアクセス方法
        @data3 = "message => #{json_request["message"]}"

        # この後、postされたデータをDBに突っ込むなり、必要な処理を記述してください。
        if !json_request.blank?
            @personal = json_request
        else
            @personal = {'status' => 500}
        end

        render :json => @personal
    end
end
