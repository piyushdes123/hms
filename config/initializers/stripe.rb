
Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_51N5mg4SJUoqmvGDo4TWGAp7DkmOdI7pxt3dsISxsK1nRLh5Th8JyStRYj3WAbaYqb526XpfDw4LCqkqDn0x2yr6Q00Z3Z2hmf1'],
  :secret_key      => ENV['sk_test_51N5mg4SJUoqmvGDom4apsD48VIZZpGZELAnbCygsXOgwWNUDEDmQwNzICE50KVcQIrrgZz3aL2a1Nsb8q9nwZJrc00p8QtLo8e']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]