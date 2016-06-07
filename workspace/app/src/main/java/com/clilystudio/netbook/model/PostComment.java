package com.clilystudio.netbook.model;

import java.util.Date;

public class PostComment
{
  private String _id;
  private Author author;
  private String content;
  private Date created;
  private int floor;
  private int likeCount;
  private boolean likedInView;
  private PostComment.PostCommentReply replyTo;

  public Author getAuthor()
  {
    return this.author;
  }

  public String getContent()
  {
    return this.content;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public int getFloor()
  {
    return this.floor;
  }

  public int getLikeCount()
  {
    return this.likeCount;
  }

  @Deprecated
  public PostComment.PostCommentReply getReplyTo()
  {
    return this.replyTo;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isLikedInView()
  {
    return this.likedInView;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setFloor(int paramInt)
  {
    this.floor = paramInt;
  }

  public void setLikeCount(int paramInt)
  {
    this.likeCount = paramInt;
  }

  public void setLikedInView(boolean paramBoolean)
  {
    this.likedInView = paramBoolean;
  }

  public void setReplyTo(PostComment.PostCommentReply paramPostCommentReply)
  {
    this.replyTo = paramPostCommentReply;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }

  public ReplyeeInfo toRepliedInfo()
  {
    return new CommonReplyeeInfo(get_id(), getAuthor(), getFloor());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PostComment
 * JD-Core Version:    0.6.0
 */