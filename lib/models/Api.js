const pool = require('../utils/pool');

module.exports = class AnyAPI {
  id;

  constructor(row) {
    this.id = row.id;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * FROM api_table;');
    return rows.map((row) => new AnyAPI(row));
  }
  static async getById(id) {
    const { rows } = await pool.query('SELECT * FROM api_table WHERE id=$1;', [
      id,
    ]);
    if (!rows[0]) return null;

    return new AnyAPI(rows[0]);
  }
};
