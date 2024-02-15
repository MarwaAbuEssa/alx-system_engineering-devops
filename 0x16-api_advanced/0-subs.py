#!/usr/bin/python3
"""queries the Reddit API and returns the number of
subscribers (not active users, total subscribers) """

import requests


def number_of_subscribers(subreddit):
    """number of subscribers from the Reddit API"""
    r = requests.get(r'https://www.reddit.com/r/{}/about.json'
                     .format(subreddit), headers={'User-agent': 'x'},
                     allow_redirects=False)
    if r.status_code != 200:
        return 0
    json = r.json()
    data = json.get('data')
    return data.get('subscribers', 0)
