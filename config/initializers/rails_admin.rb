RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.main_app_name = ["Concessionária", "BixsCar"]

  config.navigation_static_links = {
    'iCarros' => 'http://www.icarros.com.br/principal/index.jsp',
    'vRum' => 'http://www.vrum.com.br/avaliacao-de-preco/',
    'WebMotors' => 'https://www.webmotors.com.br/tabela-fipe-novos-usados-seminovos'
  }

  config.navigation_static_label = "Sites de Fipe"

config.model Customer do
  navigation_icon 'fa fa-users'
  create do
    field :name
    field :email
    field :cpf
    field :rg
    field :phone
    field :cellular
    field :sex
    field :birth
  end

  list do
    field :name
    field :email
    field :phone
    field :cellular
    field :sex
  end

  edit do
    field :name
    field :email
    field :cpf
    field :rg
    field :phone
    field :cellular
    field :sex
    field :birth
  end

end



config.model User do
  navigation_icon 'fa fa-user'
  create do
    field :name
    field :email
    field :password
    field :password_confirmation
  end

  edit do
    field :name
    field :email
    field :password
    field :password_confirmation
  end

  list do
    field :name
    field :email
  end

end


  
config.model Car do
  navigation_icon 'fa fa-car'
  create do
    field :name
    field :brand
    field :model
    field :manufacture
    field :color
    field :kilometer
    field :board
    field :fipe
    field :sinister
    field :status
  end

  edit do
    field :name
    field :brand
    field :model
    field :manufacture
    field :color
    field :kilometer
    field :board
    field :fipe
    field :sinister
    field :status
  end

  list do
    field :name
    field :brand
    field :model
    field :manufacture
    field :color
    field :status
  end
end

config.model Sale do
  navigation_icon 'fa fa-handshake-o'
end

config.model Purchase do
  navigation_icon 'fa fa-handshake-o'
end















  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
