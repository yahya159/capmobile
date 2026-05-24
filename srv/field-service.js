module.exports = srv => {
  srv.before(['CREATE', 'UPDATE'], 'FieldTasks', req => {
    const task = req.data;

    const allowedStatuses = ['OPEN', 'IN_PROGRESS', 'DONE', 'CANCELLED'];

    if (task.status && !allowedStatuses.includes(task.status)) {
      req.error(400, `Invalid status: ${task.status}`);
    }

    if (task.latitude && (task.latitude < -90 || task.latitude > 90)) {
      req.error(400, 'Latitude must be between -90 and 90');
    }

    if (task.longitude && (task.longitude < -180 || task.longitude > 180)) {
      req.error(400, 'Longitude must be between -180 and 180');
    }
  });
};