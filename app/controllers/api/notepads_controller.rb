class Api::NotepadsController < ApplicationController
    before_action :set_notepad, only: [:show, :update, :destroy]

    def index
        if logged_in?
            @notepads = current_user.notepads
            render json: NotepadSerializer.new(notepads)
        else
            render json: {
                error: "Please login to view notes."
            }
        end
    end

    def show
        render json: @notepad
    end

    def create
        @notepad = current_user.notepads.build(notepad_params)

        if @notepad.save
            render json: NotepadSerializer.new(@notepad), status: :created
        else
            error_resp ={
                error: @notepad.error.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    def destroy
        if @notepad.destroy
            render json: { data: "Note removed successfully."}, status: :ok
        else
            error_resp = {
                error: "Note not found."
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    private
    def set_notepad
        @notepad = Notepad.find(params[:id])
    end

    def notepad_params
        params.require(:notepad).permit(:title, :note)
    end
end
