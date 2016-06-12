
package com.clilystudio.netbook.model;

public class BookTagRoot {

    private BookSummary[] books;
    private boolean ok;

    public BookSummary[] getBooks()
    {
        return books;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBooks(BookSummary[] BookSummary_1darray1)
    {
        books = BookSummary_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
