import './App.css';
import axios from 'axios';
import { useEffect, useState } from 'react';

function App() {
  const [books, setBooks] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:4200/books')
      .then(response => setBooks(response.data))
      .catch(error => console.error('Error fetching books:', error));
  }, []);

  return (
    <div>
        <h1>Book Librassry</h1>
        <ul>
            {
              books.map(book => (
                <li key={book.id}> {book.title} by {book.author} </li>
              ))
            }
        </ul>
    </div>
  );
}

export default App;