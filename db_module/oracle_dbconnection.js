
var oracledb = require('oracledb');
var dbConfig = require('./dbconfig.js');

var sqlConnection = function getData(sql){
oracledb.getConnection(
  {
    user          : dbConfig.user,
    password      : dbConfig.password,
    connectString : dbConfig.connectString
  },
  function(err, connection)
  {
    if (err) {
      console.error(err.message);
      return;
    }
    connection.execute(
      
      sql,

   

      // The callback function handles the SQL execution results
      function(err, result)
      {
        if (err) {
          console.error(err.message);
          doRelease(connection);
          return;
        }
        //console.log(result.metaData); // [ { name: 'DEPARTMENT_ID' }, { name: 'DEPARTMENT_NAME' } ]
        //console.log(result.rows);     // [ [ 180, 'Construction' ] ]

        return result;
        doRelease(connection);
      });
  });

// Note: connections should always be released when not needed
function doRelease(connection)
{
  connection.close(
    function(err) {
      if (err) {
        console.error(err.message);
      }
    });
}

}

module.exports = sqlConnection;
