#!/usr/bin/python3
"""
function that queries the Reddit API and returns the number of subscribers
(not active users, total subscribers) for a given subreddit. If an invalid
subreddit is given, the function should return 0.
"""
import requests


def number_of_subscribers(subreddit):
    try:
        r = requests.get('https://www.reddit.com/r/{}/about.json'.
                         format(subreddit),
                         headers={'User-Agent': 'custom'},
                         allow_redirects=False)
        return r.json().get('data').get('subscribers')
    except:
        return 0
