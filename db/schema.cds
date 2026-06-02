using  { cuid, managed }  from '@sap/cds/common';

namespace field.db;

entity FieldTasks : cuid, managed {
  title        : String(100);
  description  : String(500);
  status       : String(30) default 'OPEN';
  assignedTo   : String(255);
  latitude     : Double;
  longitude    : Double;
  locationTime : Timestamp;
}

