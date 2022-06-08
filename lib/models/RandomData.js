const pool = require('../utils/pool');

module.exports = class RandomData {
  id;
  isActive;
  balance;
  age;
  eyeColor;
  name;
  gender;
  company;
  email;
  phone;
  address;
  latitude;
  longitude;

  constructor(row) {
    this.id = row.id;
    this.isActive = row.id_active;
    this.balance = row.balance;
    this.age = row.age;
    this.eyeColor = row.eye_color;
    this.name = row.name;
    this.gender = row.gender;
    this.company = row.company;
    this.email = row.email;
    this.phone = row.phone;
    this.address = row.address;
    this.latitude = row.latitude;
    this.longitude = row.longitude;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * FROM random_data;');
    return rows.map((row) => new RandomData(row));
  }
  static async getById(id) {
    const { rows } = await pool.query(
      'SELECT * FROM random_data WHERE id=$1;',
      [id]
    );
    if (!rows[0]) return null;

    return new RandomData(rows[0]);
  }
};
