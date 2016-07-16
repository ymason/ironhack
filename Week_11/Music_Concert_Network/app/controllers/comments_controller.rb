class CommentsController < ApplicationController

    def create
        @concert = Concert.find_by(id: params[:concert_id])

        @comment = Comment.new(
            comment: params[:comment][:comment],
            concert_id: @concert.id
            )
        @comment.save

        redirect_to concert_path(@concert.id)
    end
end
