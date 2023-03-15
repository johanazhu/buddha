class TopicsController < ApplicationController
  # 话题列表
  def index
    @topics = Topic.all
  end

  # 新建话题
  def new
    @topic = Topic.new
  end

  # 编辑话题
  def edit
    @topic = Topic.find(params[:id])
  end


  # 创建话题 POST
  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic
    else 
      # render 'new'
      render :new, status: :unprocessable_entity
    end
  end

  # 更新话题 PUT
  def update
    @topic = Topic.find(params[:id])

    if @topic.update(topic_params)
      redirect_to @topic
    else
      # render 'edit'
      render :edit, status: :unprocessable_entity
    end
  end

  # 话题详情
  def show
    @topic = Topic.find(params[:id])
  end

  # 删除话题 DELETE
  def destroy 
    @topic = Topic.find(params[:id])
    @topic.destroy

    redirect_to root_path, status: :see_other
  end


  private 
    def topic_params
      params.require(:topic).permit(:title, :content)
    end
end
