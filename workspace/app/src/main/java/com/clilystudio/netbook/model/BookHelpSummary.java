
package com.clilystudio.netbook.model;

import java.util.Date;

public class BookHelpSummary {

    private String _id;
    private Author author;
    private int commentCount;
    private Date created;
    private String state;
    private String title;

    public Author getAuthor()
    {
        return author;
    }

    public int getCommentCount()
    {
        return commentCount;
    }

    public Date getCreated()
    {
        return created;
    }

    public String getState()
    {
        return state;
    }

    public String getTitle()
    {
        return title;
    }

    public String get_id()
    {
        return _id;
    }

    public void setAuthor(Author Author1)
    {
        author = Author1;
    }

    public void setCommentCount(int int1)
    {
        commentCount = int1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setState(String String1)
    {
        state = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
