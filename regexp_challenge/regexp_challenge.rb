#match all URLS  *.google.*, google.*, but NOT plus.google.* or *.plus.google.*
regex = /(.*(?<!plus)\.google\.\w*)/

# Look ahead positive
# (?=)
# look ahead negative
# (?!)
# look behind positive
# (?<=)
# look behind negative 
# (?>=)

