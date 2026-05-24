using  { cuid, managed }  from '@sap/cds/common';

namespace field.db;

entity FieldTasks : cuid, managed {
  title        : String(100);
  description  : String(500);
  status       : String(30) default 'OPEN';
  assignedTo   : String(255);
  latitude     : Decimal(9,6);
  longitude    : Decimal(9,6);
  locationTime : Timestamp;
}

annotate FieldTasks with {
    modifiedAt @odata.etag;
}

