import React from 'react';
import { render, screen } from '@testing-library/react';
import App from '../App';

test('renders book library heading', () => {
    render(<App />);
    const headingElement = screen.getByText(/Book Library/i);
    expect(headingElement).toBeInTheDocument();
});
