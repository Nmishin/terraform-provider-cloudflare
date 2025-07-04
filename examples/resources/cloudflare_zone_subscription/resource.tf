resource "cloudflare_zone_subscription" "example_zone_subscription" {
  zone_id = "506e3185e9c882d175a2d0cb0093d9f2"
  frequency = "monthly"
  rate_plan = {
    id = "free"
    currency = "USD"
    externally_managed = false
    is_contract = false
    public_name = "Business Plan"
    scope = "zone"
    sets = ["string"]
  }
}
