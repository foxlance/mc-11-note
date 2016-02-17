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
        @note = current_user.notes.build(note_params)

        if @note.save
            redirect_to @note
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @note.update(note_params)
            redirect_to @note, alert: 'Changes were saved successfully'
        else
            render 'edit'
        end
    end

    def delete

    end

    private

    def note_params
        params.require(:note).permit(:title, :content)
    end

    def find_note
        @note = Note.find(params[:id])
    end
end
