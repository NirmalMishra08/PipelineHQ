-- name: InsertEvent :one
INSERT INTO events (user_id, event_type, timestamp)
VALUES ($1, $2, $3)
RETURNING id;

-- name: CountEventsByType :one
SELECT COUNT(*) FROM events WHERE event_type = $1;