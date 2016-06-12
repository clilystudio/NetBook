
package com.clilystudio.netbook.model;

import java.util.Date;

public class UGCBookDetail {

    Author author;
    UGCBookDetail$UGCBookContainer[] books;
    String collectorCount;
    Date created;
    String desc;
    String shareLink;
    String title;

    public Author getAuthor()
    {
        return author;
    }

    public UGCBookDetail$UGCBookContainer[] getBooks()
    {
        return books;
    }

    public String getCollectorCount()
    {
        return collectorCount;
    }

    public Date getCreated()
    {
        return created;
    }

    public String getDesc()
    {
        return desc;
    }

    public String getShareLink()
    {
        return shareLink;
    }

    public String getTitle()
    {
        return title;
    }

    public void setAuthor(Author Author1)
    {
        author = Author1;
    }

    public void setBooks(UGCBookDetail$UGCBookContainer[] UGCBookContainer_1darray1)
    {
        books = UGCBookContainer_1darray1;
    }

    public void setCollectorCount(String String1)
    {
        collectorCount = String1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setDesc(String String1)
    {
        desc = String1;
    }

    public void setShareLink(String String1)
    {
        shareLink = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }
}
