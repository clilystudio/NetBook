package com.ushaqi.zhuishushenqi.model;

import java.util.Date;

public class Tweet
{
  public static final String TYPE_ARTICLE = "ARTICLE";
  public static final String TYPE_COMMENT = "REVIEW";
  public static final String TYPE_RETWEET = "RETWEET";
  public static final String TYPE_TWEET = "TWEET";
  private String _id;
  private Book book;
  private int commented;
  private String content;
  private Date created;
  private boolean deleted;
  private User from;
  private boolean isHot;
  public String[] names;
  private Tweet.Post post;
  private Tweet refTweet;
  private int retweeted;
  private int score;
  private String shareLinkUrl;
  private String title;
  private String type;
  private User user;
  private Tweet.VoteOption[] votes;

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!paramObject.getClass().equals(Tweet.class));
    return this._id.equals(((Tweet)paramObject).get_id());
  }

  public Book getBook()
  {
    return this.book;
  }

  public int getCommented()
  {
    return this.commented;
  }

  public String getContent()
  {
    return this.content;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public User getFrom()
  {
    return this.from;
  }

  public String[] getNames()
  {
    return this.names;
  }

  public Tweet.Post getPost()
  {
    return this.post;
  }

  public Tweet getRefTweet()
  {
    return this.refTweet;
  }

  public int getRetweeted()
  {
    return this.retweeted;
  }

  public int getScore()
  {
    return this.score;
  }

  public String getShareLinkUrl()
  {
    return this.shareLinkUrl;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getType()
  {
    return this.type;
  }

  public User getUser()
  {
    return this.user;
  }

  public int getVoteCount()
  {
    Tweet.VoteOption[] arrayOfVoteOption1 = this.votes;
    int i = 0;
    if (arrayOfVoteOption1 != null)
    {
      int j = this.votes.length;
      i = 0;
      if (j != 0)
        break label25;
    }
    while (true)
    {
      return i;
      label25: Tweet.VoteOption[] arrayOfVoteOption2 = this.votes;
      int k = arrayOfVoteOption2.length;
      int m = 0;
      while (m < k)
      {
        int n = i + arrayOfVoteOption2[m].count;
        m++;
        i = n;
      }
    }
  }

  public Tweet.VoteOption[] getVotes()
  {
    return this.votes;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isArticle()
  {
    return "ARTICLE".equals(this.type);
  }

  public boolean isDeleted()
  {
    return this.deleted;
  }

  public boolean isHot()
  {
    return this.isHot;
  }

  public boolean isRetween()
  {
    return getType().equals("RETWEET");
  }

  public boolean isTweet()
  {
    return "TWEET".equals(this.type);
  }

  public void setBook(Book paramBook)
  {
    this.book = paramBook;
  }

  public void setCommented(int paramInt)
  {
    this.commented = paramInt;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setDeleted(boolean paramBoolean)
  {
    this.deleted = paramBoolean;
  }

  public void setFrom(User paramUser)
  {
    this.from = paramUser;
  }

  public void setIsHot(boolean paramBoolean)
  {
    this.isHot = paramBoolean;
  }

  public void setNames(String[] paramArrayOfString)
  {
    this.names = paramArrayOfString;
  }

  public void setPost(Tweet.Post paramPost)
  {
    this.post = paramPost;
  }

  public void setRefTweet(Tweet paramTweet)
  {
    this.refTweet = paramTweet;
  }

  public void setRetweeted(int paramInt)
  {
    this.retweeted = paramInt;
  }

  public void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public void setShareLinkUrl(String paramString)
  {
    this.shareLinkUrl = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }

  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }

  public void setVotes(Tweet.VoteOption[] paramArrayOfVoteOption)
  {
    this.votes = paramArrayOfVoteOption;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Tweet
 * JD-Core Version:    0.6.0
 */