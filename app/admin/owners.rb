ActiveAdmin.register Owner do
  
  scope :all, :default => true
  scope :with_cargo
  
  scope :modificados_hoy do |owners|
      owners.where("updated_at > ?", Date.today)
  end
  
  sidebar :help do
      "Necesita ayuda? envie un Email a ayuda@example.com"
  end
end
