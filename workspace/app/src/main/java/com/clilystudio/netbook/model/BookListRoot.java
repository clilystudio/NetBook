
package com.clilystudio.netbook.model;

public class BookListRoot {

    private CategoryBook[] books;
    private boolean ok;

    public CategoryBook[] getBooks()
    {
        return books;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBooks(CategoryBook[] CategoryBook_1darray1)
    {
        books = CategoryBook_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
