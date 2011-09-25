ActiveAdmin.register Owner do
  
  scope :all, :default => true
  scope :with_cargo
  scope :recent
    
  sidebar :help do
      "Necesita ayuda? envie un Email a ayuda@example.com"
  end
end
