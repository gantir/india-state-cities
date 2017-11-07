# india-state-cities
MYSQL dump of Indian states and cities

Query to get a denormalized view

```sql
select ci.id, c.name as country, c.iso_code as countryCode, c.dialing_code as countryISDCode,
s.state_name as state, s.state_code as stateCode, ci.city_name as city 
from country c 
INNER JOIN state s on c.id = s.country_id
INNER JOIN city ci on s.id = ci.state_id
```
