from twitter import TwitterSearchScraper

total = 0
geo = 0
place = 0

t = TwitterSearchScraper("#covid")
gen = t.get_items()
for tweet in gen:
    if tweet.coordinates:
        geo += 1
    if tweet.place:
        place += 1
    total += 1
    print("total: {}".format(total))
    print("geo: {}".format(geo))
    print("place: {}".format(place))
