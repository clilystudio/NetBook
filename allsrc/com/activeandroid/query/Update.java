package com.activeandroid.query;

import com.activeandroid.Cache;
import com.activeandroid.Model;

public final class Update
  implements Sqlable
{
  private Class<? extends Model> mType;

  public Update(Class<? extends Model> paramClass)
  {
    this.mType = paramClass;
  }

  final Class<? extends Model> getType()
  {
    return this.mType;
  }

  public final Set set(String paramString)
  {
    return new Set(this, paramString);
  }

  public final Set set(String paramString, Object[] paramArrayOfObject)
  {
    return new Set(this, paramString, paramArrayOfObject);
  }

  public final String toSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("UPDATE ");
    localStringBuilder.append(Cache.getTableName(this.mType));
    localStringBuilder.append(" ");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.Update
 * JD-Core Version:    0.6.0
 */