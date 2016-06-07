package com.activeandroid.query;

import com.activeandroid.Model;

public final class Delete
  implements Sqlable
{
  public final From from(Class<? extends Model> paramClass)
  {
    return new From(paramClass, this);
  }

  public final String toSql()
  {
    return "DELETE ";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.Delete
 * JD-Core Version:    0.6.0
 */