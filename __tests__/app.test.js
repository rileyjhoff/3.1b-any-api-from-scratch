const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');
const RandomData = require('../lib/models/RandomData');

describe('backend-express-template routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/random-data should return a list of random data', async () => {
    const res = await request(app).get('/random-data');
    const expected = await RandomData.getAll();
    expect(res.body).toEqual(expected);
  });

  it('/random-data/:id should return random item detail', async () => {
    const res = await request(app).get('/random-data/1');
    const expected = await RandomData.getById(1);
    expect(res.body).toEqual(expected);
  });

  afterAll(() => {
    pool.end();
  });
});
