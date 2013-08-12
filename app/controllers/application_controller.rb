class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery

  def url_after_denied_access_when_signed_out
  	# Alterada url de retorno quando o usuario nao tiver logado ao tentar acessar a pagina. O padrao d Clearance eh sign_in_path
  	root_path
  end
end
