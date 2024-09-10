# Log Structure Explanation

- `requestId`: Unique identifier for each request.
- `sourceIp`: The IP address from which the request was made.
- `requestTime`: The time when the request was made.
- `httpMethod`: The HTTP method used (e.g., GET, POST).
- `routeKey`: The API route key (e.g., `GET /items`).
- `status`: The HTTP status code returned (e.g., 200 for success).
- `responseLength`: Size of the response payload.
- `userAgent`: The User-Agent string of the client making the request.
- `integrationRequestId`: Identifier of the integration request sent to the backend.
- `integrationStatus`: Status code from the integration response.
- `errorMessage`: Error message, if any.
- `errorType`: Type of error encountered, if any.
