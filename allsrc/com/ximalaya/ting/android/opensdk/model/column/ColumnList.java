package com.ximalaya.ting.android.opensdk.model.column;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class ColumnList extends XimalayaResponse
{

  @SerializedName("column_title")
  private String columnTitle;
  private List<Column> columns;

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("total_count")
  private int totalCount;

  @SerializedName("total_page")
  private int totalPage;

  public String getColumnTitle()
  {
    return this.columnTitle;
  }

  public List<Column> getColumns()
  {
    return this.columns;
  }

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public int getTotalCount()
  {
    return this.totalCount;
  }

  public int getTotalPage()
  {
    return this.totalPage;
  }

  public void setColumnTitle(String paramString)
  {
    this.columnTitle = paramString;
  }

  public void setColumns(List<Column> paramList)
  {
    this.columns = paramList;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }

  public void setTotalPage(int paramInt)
  {
    this.totalPage = paramInt;
  }

  public String toString()
  {
    return "ColumnList [totalPage=" + this.totalPage + ", totalCount=" + this.totalCount + ", currentPage=" + this.currentPage + ", columnTitle=" + this.columnTitle + ", columns=" + this.columns + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.column.ColumnList
 * JD-Core Version:    0.6.0
 */