#!/usr/bin/python3
"""
Function that queries the Reddit API and prints the titles
of the first 10 hot posts listed for a given subreddit.
"""

import requests


def top_ten(subreddit):
    """
    Function that queries the Reddit API
    - If not a valid subreddit, print None.
    """
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    headers = {"User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"}
    params = {"limit": 10}

    try:
        req = requests.get(url, headers=headers, params=params, allow_redirects=False)
        if req.status_code == 200:
            data = req.json().get("data", {})
            children = data.get("children", [])
            if not children:
                print(None)
            else:
                for child in children:
                    title = child.get("data", {}).get("title", "None")
                    print(title)
        else:
            print(None)
    except Exception:
        print(None)
