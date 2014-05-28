json.array!(@notes) do |note|
  json.extract! note, :id, :user_id, :lead_id, :notes_body
  json.url note_url(note, format: :json)
end
