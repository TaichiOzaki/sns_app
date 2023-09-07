class TopicsController < ApplicationController
   before_action :authenticate_user!
 
  def new
    @topic = Topic.new
    render :new
  end

  def create
      @topic = Topic.new(post_params)
      #redirect_to 'topics/new'
  
    if @topic.save
      redirect_to topic_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end 
    
  private
  def post_params
   params.require(:topic).permit(:title, :body, :image)
  end

  def edit
    render :edit
  end

  def update
  redirect_to edit_topic_path(@topic) 
  end

end

