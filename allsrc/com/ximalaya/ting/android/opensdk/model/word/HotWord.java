package com.ximalaya.ting.android.opensdk.model.word;

import com.google.gson.annotations.SerializedName;

public class HotWord
{
  private int count;
  private int degree;

  @SerializedName("search_word")
  private String searchword;

  public int getCount()
  {
    return this.count;
  }

  public int getDegree()
  {
    return this.degree;
  }

  public String getSearchword()
  {
    return this.searchword;
  }

  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }

  public void setDegree(int paramInt)
  {
    this.degree = paramInt;
  }

  public void setSearchword(String paramString)
  {
    this.searchword = paramString;
  }

  public String toString()
  {
    return "HotWord [searchword=" + this.searchword + ", degree=" + this.degree + ", count=" + this.count + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.word.HotWord
 * JD-Core Version:    0.6.0
 */