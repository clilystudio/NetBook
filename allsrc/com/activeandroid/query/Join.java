package com.activeandroid.query;

import android.text.TextUtils;
import com.activeandroid.Cache;
import com.activeandroid.Model;

public final class Join
  implements Sqlable
{
  private String mAlias;
  private From mFrom;
  private Join.JoinType mJoinType;
  private String mOn;
  private Class<? extends Model> mType;
  private String[] mUsing;

  Join(From paramFrom, Class<? extends Model> paramClass, Join.JoinType paramJoinType)
  {
    this.mFrom = paramFrom;
    this.mType = paramClass;
    this.mJoinType = paramJoinType;
  }

  public final Join as(String paramString)
  {
    this.mAlias = paramString;
    return this;
  }

  public final From on(String paramString)
  {
    this.mOn = paramString;
    return this.mFrom;
  }

  public final From on(String paramString, Object[] paramArrayOfObject)
  {
    this.mOn = paramString;
    this.mFrom.addArguments(paramArrayOfObject);
    return this.mFrom;
  }

  public final String toSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.mJoinType != null)
      localStringBuilder.append(this.mJoinType.toString()).append(" ");
    localStringBuilder.append("JOIN ");
    localStringBuilder.append(Cache.getTableName(this.mType));
    localStringBuilder.append(" ");
    if (this.mAlias != null)
    {
      localStringBuilder.append("AS ");
      localStringBuilder.append(this.mAlias);
      localStringBuilder.append(" ");
    }
    if (this.mOn != null)
    {
      localStringBuilder.append("ON ");
      localStringBuilder.append(this.mOn);
      localStringBuilder.append(" ");
    }
    while (true)
    {
      return localStringBuilder.toString();
      if (this.mUsing == null)
        continue;
      localStringBuilder.append("USING (");
      localStringBuilder.append(TextUtils.join(", ", this.mUsing));
      localStringBuilder.append(") ");
    }
  }

  public final From using(String[] paramArrayOfString)
  {
    this.mUsing = paramArrayOfString;
    return this.mFrom;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.Join
 * JD-Core Version:    0.6.0
 */