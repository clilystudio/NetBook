package com.ushaqi.zhuishushenqi.model;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Vote
 * JD-Core Version:    0.6.0
 */