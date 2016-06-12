
package com.clilystudio.netbook.model;

import java.util.Date;

public class PostComment {

    private String _id;
    private Author author;
    private String content;
    private Date created;
    private int floor;
    private int likeCount;
    private boolean likedInView;
    private PostComment$PostCommentReply replyTo;

    public Author getAuthor()
    {
        return author;
    }

    public String getContent()
    {
        return content;
    }

    public Date getCreated()
    {
        return created;
    }

    public int getFloor()
    {
        return floor;
    }

    public int getLikeCount()
    {
        return likeCount;
    }

    public PostComment$PostCommentReply getReplyTo()
    {
        return replyTo;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isLikedInView()
    {
        return likedInView;
    }

    public void setAuthor(Author Author1)
    {
        author = Author1;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setFloor(int int1)
    {
        floor = int1;
    }

    public void setLikeCount(int int1)
    {
        likeCount = int1;
    }

    public void setLikedInView(boolean boolean1)
    {
        likedInView = boolean1;
    }

    public void setReplyTo(PostComment$PostCommentReply PostCommentReply1)
    {
        replyTo = PostCommentReply1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }

    public ReplyeeInfo toRepliedInfo()
    {
        return (ReplyeeInfo) new CommonReplyeeInfo( get_id(), getAuthor(), getFloor() );
    }
}
