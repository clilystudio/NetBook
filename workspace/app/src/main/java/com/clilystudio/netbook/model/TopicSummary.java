
package com.clilystudio.netbook.model;

public class TopicSummary {

    private TopicSummary$TopicSummaryBook[] books;
    private boolean ok;

    public TopicSummary$TopicSummaryBook[] getBooks()
    {
        int int1;

        for( int1 = 0; int1 < books.length; ++int1 )
        {
            if( books[int1] == null )
            {
                books[int1] = new TopicSummary$TopicSummaryBook( this );
                books[int1].set_id( "" );
            }
        }
        return books;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBooks(TopicSummary$TopicSummaryBook[] TopicSummaryBook_1darray1)
    {
        books = TopicSummaryBook_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
