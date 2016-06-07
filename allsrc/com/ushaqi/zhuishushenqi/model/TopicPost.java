package com.ushaqi.zhuishushenqi.model;

import java.util.Date;

public class TopicPost
{
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
    return this.author;
  }

  public String getBlock()
  {
    return this.block;
  }

  public PostBook getBook()
  {
    if (this.book == null)
    {
      this.book = new PostBook();
      this.book.set_id("");
      this.book.setTitle("该书不存在");
      this.book.setCover("");
    }
    return this.book;
  }

  public int getCommentCount()
  {
    return this.commentCount;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public String getState()
  {
    return this.state;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getType()
  {
    if (this.type == null)
      this.type = "";
    return this.type;
  }

  public int getVoteCount()
  {
    return this.voteCount;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setBlock(String paramString)
  {
    this.block = paramString;
  }

  public void setBook(PostBook paramPostBook)
  {
    this.book = paramPostBook;
  }

  public void setCommentCount(int paramInt)
  {
    this.commentCount = paramInt;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setState(String paramString)
  {
    this.state = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }

  public void setVoteCount(int paramInt)
  {
    this.voteCount = paramInt;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.TopicPost
 * JD-Core Version:    0.6.0
 */