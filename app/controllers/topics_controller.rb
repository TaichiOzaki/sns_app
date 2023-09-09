class TopicsController < ApplicationController
   before_action :authenticate_user!
 
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)
  
    if @topic.save
      redirect_to create_topic_path(@topic), notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end 
  
  private
  def topic_params
    params.require(:topic).permit(:title, :body, :image)
  end 
 
end

