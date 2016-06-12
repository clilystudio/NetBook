
package com.clilystudio.netbook.model;

import java.util.Date;

public class DiscussSummary {

    private String _id;
    private Author author;
    private int commentCount;
    private Date created;
    public int likeCount;
    private String state;
    private String title;
    private String type;
    private Date updated;
    private int voteCount;

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

    public String getType()
    {
        return type;
    }

    public Date getUpdated()
    {
        return updated;
    }

    public int getVoteCount()
    {
        return voteCount;
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

    public void setType(String String1)
    {
        type = String1;
    }

    public void setUpdated(Date Date1)
    {
        updated = Date1;
    }

    public void setVoteCount(int int1)
    {
        voteCount = int1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
