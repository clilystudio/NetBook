package com.ximalaya.ting.android.opensdk.model.word;

import com.google.gson.annotations.SerializedName;

public class QueryResult
{

  @SerializedName("highlight_keyword")
  private String highlightKeyword;
  private String keyword;

  @SerializedName("id")
  private long queryId;

  public String getHighlightKeyword()
  {
    return this.highlightKeyword;
  }

  public String getKeyword()
  {
    return this.keyword;
  }

  public long getQueryId()
  {
    return this.queryId;
  }

  public void setHighlightKeyword(String paramString)
  {
    this.highlightKeyword = paramString;
  }

  public void setKeyword(String paramString)
  {
    this.keyword = paramString;
  }

  public void setQueryId(long paramLong)
  {
    this.queryId = paramLong;
  }

  public String toString()
  {
    return "QueryResult [queryId=" + this.queryId + ", keyword=" + this.keyword + ", highlightKeyword=" + this.highlightKeyword + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.word.QueryResult
 * JD-Core Version:    0.6.0
 */