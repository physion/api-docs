# Errors

The API uses the following error codes:


Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid.
401 | Unauthorized -- Your API key is wrong.
403 | Forbidden -- Your request is hidden for administrators only.
404 | Not Found -- The specified resource could not be found.
406 | Not Acceptable -- You requested a format that isn't json.
422 | Unprocessable Entity -- You requested a contained instruction that it was not able to process.
429 | Too Many Requests -- You're performing too many requests.
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
