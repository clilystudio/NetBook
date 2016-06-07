package com.activeandroid.query;

import android.text.TextUtils;
import com.activeandroid.Model;

public final class Select
  implements Sqlable
{
  private boolean mAll = false;
  private String[] mColumns;
  private boolean mDistinct = false;

  public Select()
  {
  }

  public Select(Select.Column[] paramArrayOfColumn)
  {
    int j = paramArrayOfColumn.length;
    this.mColumns = new String[j];
    while (i < j)
    {
      this.mColumns[i] = (paramArrayOfColumn[i].name + " AS " + paramArrayOfColumn[i].alias);
      i++;
    }
  }

  public Select(String[] paramArrayOfString)
  {
    this.mColumns = paramArrayOfString;
  }

  public final Select all()
  {
    this.mDistinct = false;
    this.mAll = true;
    return this;
  }

  public final Select distinct()
  {
    this.mDistinct = true;
    this.mAll = false;
    return this;
  }

  public final From from(Class<? extends Model> paramClass)
  {
    return new From(paramClass, this);
  }

  public final String toSql()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT ");
    if (this.mDistinct)
    {
      localStringBuilder.append("DISTINCT ");
      if ((this.mColumns == null) || (this.mColumns.length <= 0))
        break label98;
      localStringBuilder.append(TextUtils.join(", ", this.mColumns) + " ");
    }
    while (true)
    {
      return localStringBuilder.toString();
      if (!this.mAll)
        break;
      localStringBuilder.append("ALL ");
      break;
      label98: localStringBuilder.append("* ");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.Select
 * JD-Core Version:    0.6.0
 */