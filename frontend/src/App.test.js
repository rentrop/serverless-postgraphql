import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import auth from './services/gqlAuth';

jest.mock('./services/gqlAuth', () => {
  return {
    isAuthenticated: jest.fn()
  }
});

describe('when the user is logged in', () => {
  beforeAll(() => {
    auth.isAuthenticated.mockReturnValue(true);
  });

  it('renders without crashing', () => {
    const div = document.createElement('div');
    ReactDOM.render(<App />, div);
  });
});

describe('when the user is logged out', () => {
  beforeAll(() => {
    auth.isAuthenticated.mockReturnValue(false);
  });

  it('renders without crashing', () => {
    const div = document.createElement('div');
    ReactDOM.render(<App />, div);
  });
});
