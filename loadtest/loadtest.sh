echo "Load Test Starting for 5 min..."

while [ (($SECONDS < 30)) ]; do
    curl -o /dev/null -s -w "%{http_code}\n" -d  '{"id":"510a0d7e-8e83-4193-b483-e27e09ddc34d"}' -H "Content-Type: application/json" -X POST CARTS_URL_PLACEHOLDER
done

echo "Load Test Completed"