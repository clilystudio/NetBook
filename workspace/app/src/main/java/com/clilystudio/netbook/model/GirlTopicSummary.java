
package com.clilystudio.netbook.model;

import java.util.Date;

public class GirlTopicSummary {

    private String _id;
    private Author author;
    private String block;
    private int commentCount;
    private Date created;
    private int likeCount;
    private String state;
    private String title;
    private String type;
    private Date updated;
    private int voteCount;
    private Vote[] votes;

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

    public Vote[] getVotes()
    {
        return votes;
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

    public void setVotes(Vote[] Vote_1darray1)
    {
        votes = Vote_1darray1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
