
package com.clilystudio.netbook.model;

public class BookGenderRecommend {

    private BookGenderRecommend$RecommendBook[] books;
    private boolean ok;

    public BookGenderRecommend$RecommendBook[] getBooks()
    {
        return books;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBooks(BookGenderRecommend$RecommendBook[] RecommendBook_1darray1)
    {
        books = RecommendBook_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
