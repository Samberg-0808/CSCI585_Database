Q5 table division:
My query is to get the indentical symptoms all self-reported employees have.

For example:

*********************************************************
*   ROW_ID  *   EMP_ID  * REPORTED_DATE * SYMPTOM_ID    *
*********************************************************
*   1       *   1       *   14-OCT-21   *   1           *
*   2       *   1       *   14-OCT-21   *   3           *
*   3       *   2       *   14-OCT-21   *   2           *
*   4       *   2       *   14-OCT-21   *   3           *
*   5       *   3       *   14-OCT-21   *   3           *
*   6       *   3       *   14-OCT-21   *   4           *
*   7       *   3       *   14-OCT-21   *   5           *
*   8       *   4       *   14-OCT-21   *   3           *
*********************************************************

The query will get SYMPTOM_ID result 3 because all employees have the same symptom 3.
The table division is column (EMP_ID and SYMPTOM_ID) DIVIDE (DISTINCT EMP_ID).