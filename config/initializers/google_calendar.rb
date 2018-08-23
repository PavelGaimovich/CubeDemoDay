if CubeDemoDay::Application.credentials.google_calendar_api.present?
  GOOGLE_CALENDAR = Google::Calendar.new(
    client_id: CubeDemoDay::Application.credentials.google_calendar_api[:client_id],
    client_secret: CubeDemoDay::Application.credentials.google_calendar_api[:secret],
    calendar: CubeDemoDay::Application.credentials.google_calendar_api[:calendar_id],
    refresh_token: CubeDemoDay::Application.credentials.google_calendar_api[:refresh_token],
    redirect_url: "urn:ietf:wg:oauth:2.0:oob" # this is what Google uses for 'applications'
  )
end
