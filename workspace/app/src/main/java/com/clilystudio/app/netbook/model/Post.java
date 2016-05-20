package com.clilystudio.app.netbook.model;

import java.util.Date;

public class Post
{
  private String _id;
  private Author author;
  private PostBook book;
  private int commentCount;
  private String content;
  private Date created;
  private String shareLink;
  private String title;
  private String type;
  private int voteCount;
  private Vote[] votes;

  public Author getAuthor()
  {
    return this.author;
  }

  public PostBook getBook()
  {
    if (this.book == null)
    {
      this.book = new PostBook();
      this.book.set_id("");
      this.book.setTitle("此书不存在");
    }
    return this.book;
  }

  public int getCommentCount()
  {
    return this.commentCount;
  }

  public String getContent()
  {
    return this.content;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public String getShareLink()
  {
    return this.shareLink;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getType()
  {
    return this.type;
  }

  public int getVoteCount()
  {
    return this.voteCount;
  }

  public Vote[] getVotes()
  {
    return this.votes;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setBook(PostBook paramPostBook)
  {
    this.book = paramPostBook;
  }

  public void setCommentCount(int paramInt)
  {
    this.commentCount = paramInt;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setShareLink(String paramString)
  {
    this.shareLink = paramString;
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

  public void setVotes(Vote[] paramArrayOfVote)
  {
    this.votes = paramArrayOfVote;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.Post
 * JD-Core Version:    0.6.2
 */