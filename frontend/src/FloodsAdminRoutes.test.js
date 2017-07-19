import React from 'react';
import { MemoryRouter } from 'react-router';
import renderer from 'react-test-renderer';
import FloodsAdminRoutes from './FloodsAdminRoutes';
import auth from './services/gqlAuth';
import { ApolloProvider } from 'react-apollo';
import client from './services/apolloClientService';

jest.mock('./services/gqlAuth', () => {
  return {
    isAuthenticated: jest.fn()
  }
});

describe('when the user is logged in', () => {
  beforeAll(() => {
    auth.isAuthenticated.mockReturnValue(true);
  });
  
  it('should render the root page correctly', () => {
    const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  it('should render the public page correctly', () => {
    const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/public' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  it('should render the protected page correctly', () => {
   const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/protected' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  it('should render the create user page correctly', () => {
   const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/createuser' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  // TODO: Figure out a good way to test loading data from GraphQL

});

describe('when the user is logged out', () => {
  beforeAll(() => {
    auth.isAuthenticated.mockReturnValue(false);
  });

  it('should render the root page correctly', () => {
    const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  it('should render the public page correctly', () => {
    const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/public' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  it('should render the protected page correctly', () => {
    const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/protected' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

  it('should render the create user page correctly', () => {
    const tree = renderer.create(
      <ApolloProvider client={client}>
        <MemoryRouter initialEntries={[ '/createuser' ]}>
          <FloodsAdminRoutes />
        </MemoryRouter>
      </ApolloProvider>
    ).toJSON();

    expect(tree).toMatchSnapshot();
  });

});
