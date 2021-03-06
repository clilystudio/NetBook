package com.ushaqi.zhuishushenqi.model;

public class Review extends ReviewSummary
{
  private Author author;
  private int commentCount;
  private String content;
  private int rating;
  private String shareLink;

  public Author getAuthor()
  {
    return this.author;
  }

  public int getCommentCount()
  {
    return this.commentCount;
  }

  public String getContent()
  {
    return this.content;
  }

  public int getRating()
  {
    return this.rating;
  }

  public String getShareLink()
  {
    return this.shareLink;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setCommentCount(int paramInt)
  {
    this.commentCount = paramInt;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setRating(int paramInt)
  {
    this.rating = paramInt;
  }

  public void setShareLink(String paramString)
  {
    this.shareLink = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Review
 * JD-Core Version:    0.6.0
 */