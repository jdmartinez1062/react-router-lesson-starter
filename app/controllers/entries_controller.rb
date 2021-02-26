class EntriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @entries = current_user.entries
  end

  def show
    @entry = current_user.entries.find_by(id: params[:id])
  end

  def create
    @entry = current_user.entries.build(entries_params)
    if @entry.save
      render :succesful, status: :created
    else
      wrong_request('Entry creation failed', @entry)
    end
  end

  def destroy
    @entry = current_user.entries.find_by(id: params[:id])
    if @entry.destroy
      render status: :succesful
    else
      wrong_request('Entry deletion failed', @entry)
    end
  end

  def entries_params
    params.require(entries).permit(:fever,
                                   :cough, :chest_pain, :sore_throat, :lack_air, :tired, :smell,
                                   :taste, :nausea, :bone_ache, :covid_contact, :medical_personel)
  end
end
