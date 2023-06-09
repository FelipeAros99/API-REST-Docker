const crypto = require('crypto');

const hash = (data) => {
  const hash = crypto.createHash('md5');
  hash.update(data);
  return hash.digest('hex');
};

module.exports = {
  hash,
};