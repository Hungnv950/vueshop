module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def not_authorized
    render json: { error: 'Not Authorized' }, status: :unauthorized
  end
end
