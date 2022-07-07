# Twitter - Part II

This is a basic twitter app to view, compose, favorite, and retweet tweets.

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User can compose a tweet. (4pts)
- [x] User can favorite a tweet. (4pts)
- [x] User can retweet a tweet. (2pts)

The following **bonus** features are implemented:

- [ ] When composing a tweet, user sees a countdown for the number of characters remaining for the tweet (out of 140) (2pts)
- [ ] User can view their profile in a profile tab. (3pts)
- [ ] User sees embedded images in tweet if available. (3pts)

# Project 3 - *twitter*

**twitter** is a basic twitter app to read your tweets.

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User sees app icon in home screen and styled launch screen. (1pt)
- [x] User can log in. (1pt)
- [x] User can log out. (1pt)
- [x] User stays logged in across restarts. (1pt)
- [x] User can view tweets with the user profile picture, username, and tweet text. (6pts)

The following **bonus** features are implemented:

- [ ] User can pull to refresh. (1pt)
- [ ] User can load past tweets infinitely. (2pts)

### Notes
Describe any challenges encountered while building the app.

#### When I was working on the project, I found there is an error shows 
    "Thread 1: signal SIGABRT"
#### The output box shows the error message 
    "2019-11-01 20:51:32.891808-0700 Twitter[69235:297427] 
    *** Terminating app due to uncaught exception 'NSUnknownKeyException', 
    reason: '[<Twitter.HomeTableViewController 0x7fe16ce0d650> 
    setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key onLogout.'"
#### I asked the professor of Codepath on Slack told me that I probably created an outlet called onLogout. It turned out the professor said was totally correct. I went to the Storyboard and deleted the outlet version for onLogout, and the program was succeed.
