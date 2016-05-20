package com.clilystudio.app.netbook.model;

public class Vote
  implements Comparable<Vote>
{
  private String content;
  private int count;

  public int compareTo(Vote paramVote)
  {
    return getCount() - paramVote.getCount();
  }

  public String getContent()
  {
    return this.content;
  }

  public int getCount()
  {
    return this.count;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.Vote
 * JD-Core Version:    0.6.2
 */