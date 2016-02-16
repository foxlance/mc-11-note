class NotesController < ApplicationController
    before_action:find_note, only: [:show, :edit, :update, :delete]


    def index
        @notes = Note.where(user_id: current_user)
    end

    def show
    end

    def new
        @note = current_user.notes.build
    end

    def create
        @note = current_user.notes.build(notes_params)

        if @note.save
            redirect_to @note
        else
            render 'new'
        end
    end

    def edit

    end

    def update

    end

    def delete

    end

    private

    def notes_params
        params.require(:note).permit(:title, :content)
    end

    def find_note
        @note = Note.find(params[:id])
    end
end
