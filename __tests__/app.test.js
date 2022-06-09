const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');
const RandomData = require('../lib/models/RandomData');
const { data } = require('../data/random-data');

describe('backend-express-template routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/random-data should return a list of random data', async () => {
    const res = await request(app).get('/random-data');
    expect(res.body).toEqual(data);
  });

  it('/random-data/:id should return random item detail', async () => {
    const res = await request(app).get('/random-data/1');
    const expected = {
      id: 1,
      isActive: 'true',
      balance: '$1,184.58',
      age: '21',
      eyeColor: 'blue',
      name: 'Lydia Cohen',
      gender: 'female',
      company: 'SENSATE',
      email: 'lydiacohen@sensate.com',
      phone: '+1 (940) 451-3090',
      address: '208 Alice Court, Axis, Alabama, 3735',
      latitude: '73.623047',
      longitude: '11.913395',
    };
    expect(res.body).toEqual(expected);
  });

  afterAll(() => {
    pool.end();
  });
});
