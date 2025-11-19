import React from 'react';
import { render, screen } from '@testing-library/react';
import '@testing-library/jest-dom';
import App from './App';

test('renders Athlete button', () => {
  render(<App />);
  const buttonElement = screen.getByRole('button', { name: /Athlete/i });
  expect(buttonElement).toBeInTheDocument();
});
