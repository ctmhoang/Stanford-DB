# DB5 Notes
## Select Statement
```
Select A1,A2,...,An
From R1, R2,... ,Rm
Where condition
```
* condition
	* Equal `=`
	* LT, GT `> <`
	* combine
		* `and`, `or`
* Eliminate Duplicate Values
	`distinct`
* Ambiguous colum name error
	</br>use dot notation
* Order of result
	* Put this clause after where clause
	</br> `order by A1,A2,...,An desc`
	</br> `order by A1,A2,...,An asc` (Default)
* Like predicate
	* Put in in where clause `A like '%str%'`
* Contruct `Select *` (get all attributes)
* Where clause can be unspecified (cross-product without any combination)
* Arithmetic within SQL clauses
	* Use in select contruct 
* Change label on colum
	* use `as` feature in select clause
	
## Table variables & set Operators
* Set operators
	* Union
	* Intersect
	* Except
