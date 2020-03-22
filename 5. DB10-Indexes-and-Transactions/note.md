# DB10 Notes
## Indexes
* Create based on
  * Database statistic
  * Query or update
  * Indexes
* Syntax
  * `Create index IndexName on T(A);`
  * `Create index IndexName on T(A1,A2,..,An);`
  * `Create unique index IndexName on T(A);`
  * `Drop index IndexName`
* Has many interesting implementation issues
## Transactions
* ACID Properties
 * Atomicity
 * Consistency
 * Isolation == Serializability
 * Durability
