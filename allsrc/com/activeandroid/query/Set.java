package com.activeandroid.query;

import com.activeandroid.util.SQLiteUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Set
  implements Sqlable
{
  private String mSet;
  private List<Object> mSetArguments;
  private Update mUpdate;
  private String mWhere;
  private List<Object> mWhereArguments;

  public Set(Update paramUpdate, String paramString)
  {
    this.mUpdate = paramUpdate;
    this.mSet = paramString;
    this.mSetArguments = new ArrayList();
    this.mWhereArguments = new ArrayList();
  }

  public Set(Update paramUpdate, String paramString, Object[] paramArrayOfObject)
  {
    this.mUpdate = paramUpdate;
    this.mSet = paramString;
    this.mSetArguments = new ArrayList();
    this.mWhereArguments = new ArrayList();
    this.mSetArguments.addAll(Arrays.asList(paramArrayOfObject));
  }

  public final void execute()
  {
    SQLiteUtils.execSql(toSql(), getArguments());
  }

  public final String[] getArguments()
  {
    int i = this.mSetArguments.size();
    int j = this.mWhereArguments.size();
    String[] arrayOfString = new String[i + j];
    int m;
    for (int k = 0; ; k++)
    {
      m = 0;
      if (k >= i)
        break;
      arrayOfString[k] = this.mSetArguments.get(k).toString();
    }
    while (m < j)
    {
      arrayOfString[(m + i)] = this.mWhereArguments.get(m).toString();
      m++;
    }
    return arrayOfString;
  }

  public final String toSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mUpdate.toSql());
    localStringBuilder.append("SET ");
    localStringBuilder.append(this.mSet);
    localStringBuilder.append(" ");
    if (this.mWhere != null)
    {
      localStringBuilder.append("WHERE ");
      localStringBuilder.append(this.mWhere);
      localStringBuilder.append(" ");
    }
    return localStringBuilder.toString();
  }

  public final Set where(String paramString)
  {
    this.mWhere = paramString;
    this.mWhereArguments.clear();
    return this;
  }

  public final Set where(String paramString, Object[] paramArrayOfObject)
  {
    this.mWhere = paramString;
    this.mWhereArguments.clear();
    this.mWhereArguments.addAll(Arrays.asList(paramArrayOfObject));
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.Set
 * JD-Core Version:    0.6.0
 */