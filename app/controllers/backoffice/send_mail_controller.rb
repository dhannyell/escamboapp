class Backoffice::SendMailController < ApplicationController
  respond_to :js, :json, :html

  def edit
    @admin = Admin.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def create
    begin
      AdminMailer.send_message(current_admin,
                               params[:'recipient-text'],
                               params[:'subject-text'],
                               params['message-text']).deliver_now
      @notify_message = "Email Enviado com Sucesso"
      @notify_flag = "success"
    rescue
      @notify_message = "Erro ao enviar messagem. Tente novamente!"
      @notify_flag = "error"
    end
    #@admin = Admin.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

end
