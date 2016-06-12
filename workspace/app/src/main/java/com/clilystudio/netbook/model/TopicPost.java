
package com.clilystudio.netbook.model;

import java.util.Date;

public class TopicPost {

    private String _id;
    private Author author;
    private String block;
    private PostBook book;
    private int commentCount;
    private Date created;
    public int likeCount;
    private String state;
    private String title;
    private String type;
    private int voteCount;

    public Author getAuthor()
    {
        return author;
    }

    public String getBlock()
    {
        return block;
    }

    public PostBook getBook()
    {
        if( book == null )
        {
            book = new PostBook();
            book.set_id( "" );
            book.setTitle( "\u8BE5\u4E66\u4E0D\u5B58\u5728" );
            book.setCover( "" );
        }
        return book;
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
        if( type == null )
            type = "";
        return type;
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

    public void setBlock(String String1)
    {
        block = String1;
    }

    public void setBook(PostBook PostBook1)
    {
        book = PostBook1;
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

    public void setVoteCount(int int1)
    {
        voteCount = int1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
