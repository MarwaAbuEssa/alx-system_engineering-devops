#!/usr/bin/python3
"""query subscribers on a given Reddit subreddit."""
import requests


def number_of_subscribers(subreddit):
    """total number of subscribers on a given subreddit."""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "api.advanced"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    print(response.status_code)
    if response.status_code != 200:
        return 0

    results = response.json().get("data")
    return results.get("subscribers")
