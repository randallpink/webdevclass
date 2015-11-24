json.array!(@applications) do |application|
  json.extract! application, :id, :email, :job_id, :resume, :firstname, :lastname, :coverletter, :opt_in, :street_address
  json.url application_url(application, format: :json)
end
