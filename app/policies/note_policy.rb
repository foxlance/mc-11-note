class NotePolicy
    attr_reader :user, :note

    def initialize user, note
        @user = user
        @note = note
    end

    def edit?
        user.id == note.user_id
    end
end
