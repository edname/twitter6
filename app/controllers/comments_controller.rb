class CommentsController < ApplicationController
    before_action :set_post

def create
    comment = @post.comments.create! params.required(:comment).permit(:content)
    CommentsMailer.submitted(comment).deliver_later
    redirect_to @post
end

def destroy
    comment = @post.comments.find(params[:id])
    comment.destroy

    redirect_to do |format| 
        format.html { redirect_to @post, notice: "Comment was successfully destroyed."}
        format.json { head :no_content }
    end
end

private
    def set_post
        @post = Post.find(params[:post_id])
    end

end
