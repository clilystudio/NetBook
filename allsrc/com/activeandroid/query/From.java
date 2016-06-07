package com.activeandroid.query;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.content.ContentProvider;
import com.activeandroid.util.Log;
import com.activeandroid.util.SQLiteUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class From
  implements Sqlable
{
  private String mAlias;
  private List<Object> mArguments;
  private String mGroupBy;
  private String mHaving;
  private List<Join> mJoins;
  private String mLimit;
  private String mOffset;
  private String mOrderBy;
  private Sqlable mQueryBase;
  private Class<? extends Model> mType;
  private final StringBuilder mWhere = new StringBuilder();

  public From(Class<? extends Model> paramClass, Sqlable paramSqlable)
  {
    this.mType = paramClass;
    this.mJoins = new ArrayList();
    this.mQueryBase = paramSqlable;
    this.mJoins = new ArrayList();
    this.mArguments = new ArrayList();
  }

  private void addFrom(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("FROM ");
    paramStringBuilder.append(Cache.getTableName(this.mType)).append(" ");
    if (this.mAlias != null)
    {
      paramStringBuilder.append("AS ");
      paramStringBuilder.append(this.mAlias);
      paramStringBuilder.append(" ");
    }
  }

  private void addGroupBy(StringBuilder paramStringBuilder)
  {
    if (this.mGroupBy != null)
    {
      paramStringBuilder.append("GROUP BY ");
      paramStringBuilder.append(this.mGroupBy);
      paramStringBuilder.append(" ");
    }
  }

  private void addHaving(StringBuilder paramStringBuilder)
  {
    if (this.mHaving != null)
    {
      paramStringBuilder.append("HAVING ");
      paramStringBuilder.append(this.mHaving);
      paramStringBuilder.append(" ");
    }
  }

  private void addJoins(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = this.mJoins.iterator();
    while (localIterator.hasNext())
      paramStringBuilder.append(((Join)localIterator.next()).toSql());
  }

  private void addLimit(StringBuilder paramStringBuilder)
  {
    if (this.mLimit != null)
    {
      paramStringBuilder.append("LIMIT ");
      paramStringBuilder.append(this.mLimit);
      paramStringBuilder.append(" ");
    }
  }

  private void addOffset(StringBuilder paramStringBuilder)
  {
    if (this.mOffset != null)
    {
      paramStringBuilder.append("OFFSET ");
      paramStringBuilder.append(this.mOffset);
      paramStringBuilder.append(" ");
    }
  }

  private void addOrderBy(StringBuilder paramStringBuilder)
  {
    if (this.mOrderBy != null)
    {
      paramStringBuilder.append("ORDER BY ");
      paramStringBuilder.append(this.mOrderBy);
      paramStringBuilder.append(" ");
    }
  }

  private void addWhere(StringBuilder paramStringBuilder)
  {
    if (this.mWhere.length() > 0)
    {
      paramStringBuilder.append("WHERE ");
      paramStringBuilder.append(this.mWhere);
      paramStringBuilder.append(" ");
    }
  }

  private String sqlString(StringBuilder paramStringBuilder)
  {
    String str = paramStringBuilder.toString().trim();
    if (Log.isEnabled())
      Log.v(str + " " + TextUtils.join(",", getArguments()));
    return str;
  }

  final void addArguments(Object[] paramArrayOfObject)
  {
    int i = paramArrayOfObject.length;
    int j = 0;
    if (j < i)
    {
      Object localObject = paramArrayOfObject[j];
      if ((localObject.getClass() == Boolean.TYPE) || (localObject.getClass() == Boolean.class))
        if (!localObject.equals(Boolean.valueOf(true)))
          break label76;
      label76: for (int k = 1; ; k = 0)
      {
        localObject = Integer.valueOf(k);
        this.mArguments.add(localObject);
        j++;
        break;
      }
    }
  }

  public final From and(String paramString)
  {
    return where(paramString);
  }

  public final From and(String paramString, Object[] paramArrayOfObject)
  {
    return where(paramString, paramArrayOfObject);
  }

  public final From as(String paramString)
  {
    this.mAlias = paramString;
    return this;
  }

  public final int count()
  {
    return SQLiteUtils.intQuery(toCountSql(), getArguments());
  }

  public final Join crossJoin(Class<? extends Model> paramClass)
  {
    Join localJoin = new Join(this, paramClass, Join.JoinType.CROSS);
    this.mJoins.add(localJoin);
    return localJoin;
  }

  public final <T extends Model> List<T> execute()
  {
    if ((this.mQueryBase instanceof Select))
      return SQLiteUtils.rawQuery(this.mType, toSql(), getArguments());
    SQLiteUtils.execSql(toSql(), getArguments());
    Cache.getContext().getContentResolver().notifyChange(ContentProvider.createUri(this.mType, null), null);
    return null;
  }

  public final <T extends Model> T executeSingle()
  {
    if ((this.mQueryBase instanceof Select))
    {
      limit(1);
      return SQLiteUtils.rawQuerySingle(this.mType, toSql(), getArguments());
    }
    limit(1);
    SQLiteUtils.rawQuerySingle(this.mType, toSql(), getArguments()).delete();
    return null;
  }

  public final boolean exists()
  {
    return SQLiteUtils.intQuery(toExistsSql(), getArguments()) != 0;
  }

  public final String[] getArguments()
  {
    int i = this.mArguments.size();
    String[] arrayOfString = new String[i];
    for (int j = 0; j < i; j++)
      arrayOfString[j] = this.mArguments.get(j).toString();
    return arrayOfString;
  }

  public final From groupBy(String paramString)
  {
    this.mGroupBy = paramString;
    return this;
  }

  public final From having(String paramString)
  {
    this.mHaving = paramString;
    return this;
  }

  public final Join innerJoin(Class<? extends Model> paramClass)
  {
    Join localJoin = new Join(this, paramClass, Join.JoinType.INNER);
    this.mJoins.add(localJoin);
    return localJoin;
  }

  public final Join join(Class<? extends Model> paramClass)
  {
    Join localJoin = new Join(this, paramClass, null);
    this.mJoins.add(localJoin);
    return localJoin;
  }

  public final Join leftJoin(Class<? extends Model> paramClass)
  {
    Join localJoin = new Join(this, paramClass, Join.JoinType.LEFT);
    this.mJoins.add(localJoin);
    return localJoin;
  }

  public final From limit(int paramInt)
  {
    return limit(String.valueOf(paramInt));
  }

  public final From limit(String paramString)
  {
    this.mLimit = paramString;
    return this;
  }

  public final From offset(int paramInt)
  {
    return offset(String.valueOf(paramInt));
  }

  public final From offset(String paramString)
  {
    this.mOffset = paramString;
    return this;
  }

  public final From or(String paramString)
  {
    if (this.mWhere.length() > 0)
      this.mWhere.append(" OR ");
    this.mWhere.append(paramString);
    return this;
  }

  public final From or(String paramString, Object[] paramArrayOfObject)
  {
    or(paramString).addArguments(paramArrayOfObject);
    return this;
  }

  public final From orderBy(String paramString)
  {
    this.mOrderBy = paramString;
    return this;
  }

  public final Join outerJoin(Class<? extends Model> paramClass)
  {
    Join localJoin = new Join(this, paramClass, Join.JoinType.OUTER);
    this.mJoins.add(localJoin);
    return localJoin;
  }

  public final String toCountSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT COUNT(*) ");
    addFrom(localStringBuilder);
    addJoins(localStringBuilder);
    addWhere(localStringBuilder);
    addGroupBy(localStringBuilder);
    addHaving(localStringBuilder);
    addLimit(localStringBuilder);
    addOffset(localStringBuilder);
    return sqlString(localStringBuilder);
  }

  public final String toExistsSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT EXISTS(SELECT 1 ");
    addFrom(localStringBuilder);
    addJoins(localStringBuilder);
    addWhere(localStringBuilder);
    addGroupBy(localStringBuilder);
    addHaving(localStringBuilder);
    addLimit(localStringBuilder);
    addOffset(localStringBuilder);
    localStringBuilder.append(")");
    return sqlString(localStringBuilder);
  }

  public final String toSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mQueryBase.toSql());
    addFrom(localStringBuilder);
    addJoins(localStringBuilder);
    addWhere(localStringBuilder);
    addGroupBy(localStringBuilder);
    addHaving(localStringBuilder);
    addOrderBy(localStringBuilder);
    addLimit(localStringBuilder);
    addOffset(localStringBuilder);
    return sqlString(localStringBuilder);
  }

  public final From where(String paramString)
  {
    if (this.mWhere.length() > 0)
      this.mWhere.append(" AND ");
    this.mWhere.append(paramString);
    return this;
  }

  public final From where(String paramString, Object[] paramArrayOfObject)
  {
    where(paramString).addArguments(paramArrayOfObject);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.From
 * JD-Core Version:    0.6.0
 */