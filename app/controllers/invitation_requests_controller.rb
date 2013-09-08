class InvitationRequestsController < ApplicationController
  respond_to :json

  def index
    @invitation_requests = InvitationRequest.all.order("created_at DESC")
    respond_with(@invitation_requests)
  end

  def create
    @invitation_request = InvitationRequest.create(invitation_request_params)
    respond_with(@invitation_request)
  end

  def destroy
    @invitation_request = InvitationRequest.find(params[:id])
    @invitation_request.destroy
    respond_with(@invitation_request)
  end

  private

  def invitation_request_params
    params[:invitation_request]
  end
end
