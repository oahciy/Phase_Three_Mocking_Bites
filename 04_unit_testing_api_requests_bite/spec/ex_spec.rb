require "exercise"

RSpec.describe TimeError do
  it "returns the difference between the remote clock and the local clock" do
    fake_requester = double(:requester)
    allow(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return(
      '{"abbreviation":"BST","client_ip":"90.220.192.189","datetime":"2022-09-04T20:29:18.726612+01:00","day_of_week":0,"day_of_year":247,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1662319758,"utc_datetime":"2022-09-04T19:29:18.726612+00:00","utc_offset":"+01:00","week_number":35}'
    )
    time = Time.new(2022, 9, 4, 20, 29, 18)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.726612
  end
end