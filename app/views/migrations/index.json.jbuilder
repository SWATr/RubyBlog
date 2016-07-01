json.array!(@migrations) do |migration|
  json.extract! migration, :id, :add_admin_to_users, :admin
  json.url migration_url(migration, format: :json)
end
