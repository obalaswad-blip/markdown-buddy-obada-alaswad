# Synthetic auto service visits: documentation-only example.
# All visit records below are invented, not sourced from customers.
visits <- data.frame(
  visit_id = sprintf("S%02d", 1:12),
  service_type = c("Oil change", "Brakes", "Tires", "Oil change",
                   "Battery", "Tires", "Brakes", "Oil change",
                   "Tires", "Battery", "Oil change", "Brakes"),
  stringsAsFactors = FALSE
)

# Count synthetic visits within each service category.
service_counts <- aggregate(
  visits$visit_id,
  by = list(service_type = visits$service_type),
  FUN = length
)
names(service_counts)[2] <- "visits"

print(service_counts)
