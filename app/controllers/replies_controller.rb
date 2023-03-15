class RepliesController < ApplicationController

    def create
        @topic = Topic.find(params[:topic_id])
        @reply = @topic.replies.create(reply_params)
        redirect_to topic_path(@topic)
    end

    private
        def reply_params
            params.require(:reply).permit(:body)
        end
end
