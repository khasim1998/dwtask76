%dw 2.0
//Here I am importing the substringBefore from dw::core::Strings
import * from dw::core::Strings
output application/json
//Here I am priting the first value in the given value from the payload
---
payload map ((item, index) -> Name: trim(substringBefore(upper(item.Name),'/')splitBy '-' reduce $$))