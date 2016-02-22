class AssetsController < ApplicationController
  def create
    @note = Note.find(params[:note_id])
    @asset = @note.assets.build asset_params

    if @asset.save
      redirect_to @note, notice: 'File was successfully uploaded'
    else
      redirect_to @note, alert: 'File was not uploaded'
    end
  end

  private
  def asset_params
    params.require(:asset).permit(:file)
  end
end
