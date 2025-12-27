const cds = require('@sap/cds');

module.exports = cds.service.impl(function () {
  this.before('CREATE', 'Books', req => {
    if (req.data.stock < 0) {
      req.error('Stock cannot be negative');
    }
  });
});