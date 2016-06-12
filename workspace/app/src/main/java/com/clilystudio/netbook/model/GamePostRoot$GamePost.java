
package com.clilystudio.netbook.model;

import java.util.Date;

public class GamePostRoot$GamePost {

    private String _id;
    private Author author;
    private String block;
    private int commentCount;
    private String content;
    private Date created;
    private int likeCount;
    private String state;
    private String type;

    public Author getAuthor()
    {
        return author;
    }

    public String getBlock()
    {
        return block;
    }

    public int getCommentCount()
    {
        return commentCount;
    }

    public String getContent()
    {
        return content;
    }

    public Date getCreated()
    {
        return created;
    }

    public int getLikeCount()
    {
        return likeCount;
    }

    public String getState()
    {
        return state;
    }

    public String getType()
    {
        return type;
    }

    public String get_id()
    {
        return _id;
    }

    public void setAuthor(Author Author1)
    {
        author = Author1;
    }

    public void setBlock(String String1)
    {
        block = String1;
    }

    public void setCommentCount(int int1)
    {
        commentCount = int1;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setLikeCount(int int1)
    {
        likeCount = int1;
    }

    public void setState(String String1)
    {
        state = String1;
    }

    public void setType(String String1)
    {
        type = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
