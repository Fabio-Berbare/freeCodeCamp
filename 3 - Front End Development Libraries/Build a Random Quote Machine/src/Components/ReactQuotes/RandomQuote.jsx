import React, { useState } from 'react';
import "./RandomQuote.css";
import { TwitterX } from 'react-bootstrap-icons';
import { Facebook } from 'react-bootstrap-icons';
import AllQuotes from "../Assets/QuotesList.json";

export const RandomQuote = () => {

  let newData = [];

  async function loadQuotes() {
    newData = AllQuotes.quotes;
  };
  
  const [data, setQuote] = useState({
    quote: "Genius is one percent inspiration and ninety-nine percent perspiration.",
    author: "Thomas Edison",
  });

  const random = () => {
    const select = newData[Math.floor(Math.random() * newData.length)];
    setQuote(select);
  };
  
  const twitter = () => {
    window.open(`https://twitter.com/intent/tweet?text="${data.quote}"%0a- ${data.author}`);
  };
  const facebook = () => {
    window.open(`https://www.facebook.com/sharer/sharer.php?quote="${data.quote}"%0a- ${data.author}`);
  };

  loadQuotes();

  return (
    <div className='wrapper'>
      <div className="quote">{data.quote}</div>
      <div>
        <div className='line'></div>
        <div className='bottom'>
          <div className='icons'>
            <TwitterX className='twitterX' onClick={() => twitter()}/>
            <Facebook className="facebook" onClick={() => facebook()}/>
            <button type="button" className="btn btn-dark" onClick={() => random()}>Try Again</button>
          </div>
          <div className='author'>- {data.author}</div>
        </div>
        <div className="footer">By <span>Fábio Berbare</span></div>
      </div>
    </div>
  )
}

export default RandomQuote