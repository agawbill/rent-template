require "googleauth"
require "google/cloud/env"
require "google/cloud/storage"

# Explicitly use Compute Engine credentials and a project ID to create a new
# Cloud Storage client. These credentials are available on Compute Engine,
# App Engine Flexible, and Container Engine.
storage = Google::Cloud::Storage.new project: Google::Cloud.env.project_id,
                                     keyfile: Google::Auth::GCECredentials.new

# Make an authenticated API request
storage.buckets.each do |bucket|
  puts bucket.name
end
