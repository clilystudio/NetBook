package com.koushikdutta.async.http.filter;

 enum ChunkedInputFilter$State
{
  static
  {
    CHUNK = new State("CHUNK", 3);
    CHUNK_CR = new State("CHUNK_CR", 4);
    CHUNK_CRLF = new State("CHUNK_CRLF", 5);
    COMPLETE = new State("COMPLETE", 6);
    State[] arrayOfState = new State[7];
    arrayOfState[0] = CHUNK_LEN;
    arrayOfState[1] = CHUNK_LEN_CR;
    arrayOfState[2] = CHUNK_LEN_CRLF;
    arrayOfState[3] = CHUNK;
    arrayOfState[4] = CHUNK_CR;
    arrayOfState[5] = CHUNK_CRLF;
    arrayOfState[6] = COMPLETE;
    a = arrayOfState;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.ChunkedInputFilter.State
 * JD-Core Version:    0.6.0
 */