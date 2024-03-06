#!/usr/bin/python3
"""This module provides a function to retrieve the number of subscribers
for a given subreddit from the Reddit API.
"""

import requests


def number_of_subscribers(subreddit):
    """
    Get the number of subscribers for a given subreddit.

    Args:
        subreddit (str): The name of the subreddit.

    Returns:
        int: Number of subscribers for the subreddit,
        or 0 if the subreddit is invalid or not found.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) \
        AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 \
            Mobile Safari/537.36"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 404:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")
