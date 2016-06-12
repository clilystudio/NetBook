
package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UGCNewCollection implements Serializable {

    private String desc;
    private String title;
    List books = new ArrayList();

    public void addBook(BookSummary BookSummary1)
    {
        String String2 = BookSummary1.getId();
        Iterator Iterator3 = books.iterator();

        while( Iterator3.hasNext() )
        {
            if( !String2.equals( ((BookSummary) Iterator3.next()).getId() ) )
                continue;
            return;
        }
        books.add( BookSummary1 );
    }

    public List getBooks()
    {
        return books;
    }

    public String getDesc()
    {
        return desc;
    }

    public String getTitle()
    {
        return title;
    }

    public void setBooks(List List1)
    {
        books = List1;
    }

    public void setDesc(String String1)
    {
        desc = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }
}
