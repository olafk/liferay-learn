curl \
-H "Content-Type: application/json" \
-X PUT "http://localhost:8080/o/headless-admin-user/v1.0/user-accounts/${1}" \
-d "{\"alternateName\":\"Bar\",\"emailAddress\":\"bar@liferay.com\",\"familyName\":\"Liferay\",\"givenName\":\"Bar\"}" \
-u "test@liferay.com:test"