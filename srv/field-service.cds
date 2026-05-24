using field.db as db from '../db/schema';

service FieldService @(path: '/field') {
  entity FieldTasks as projection on db.FieldTasks;
}