package com.activeandroid;

import android.text.TextUtils;
import android.util.Log;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.util.ReflectionUtils;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class TableInfo
{
  private Map<Field, String> mColumnNames = new LinkedHashMap();
  private String mIdName = "Id";
  private String mTableName;
  private Class<? extends Model> mType;

  public TableInfo(Class<? extends Model> paramClass)
  {
    this.mType = paramClass;
    Table localTable = (Table)paramClass.getAnnotation(Table.class);
    if (localTable != null)
    {
      this.mTableName = localTable.name();
      this.mIdName = localTable.id();
    }
    while (true)
    {
      Field localField1 = getIdField(paramClass);
      this.mColumnNames.put(localField1, this.mIdName);
      LinkedList localLinkedList = new LinkedList(ReflectionUtils.getDeclaredColumnFields(paramClass));
      Collections.reverse(localLinkedList);
      Iterator localIterator = localLinkedList.iterator();
      while (localIterator.hasNext())
      {
        Field localField2 = (Field)localIterator.next();
        if (!localField2.isAnnotationPresent(Column.class))
          continue;
        String str = ((Column)localField2.getAnnotation(Column.class)).name();
        if (TextUtils.isEmpty(str))
          str = localField2.getName();
        this.mColumnNames.put(localField2, str);
      }
      this.mTableName = paramClass.getSimpleName();
    }
  }

  private Field getIdField(Class<?> paramClass)
  {
    while (true)
    {
      if (paramClass.equals(Model.class))
        try
        {
          Field localField = paramClass.getDeclaredField("mId");
          return localField;
        }
        catch (NoSuchFieldException localNoSuchFieldException)
        {
          Log.e("Impossible!", localNoSuchFieldException.toString());
        }
      do
        return null;
      while (paramClass.getSuperclass() == null);
      paramClass = paramClass.getSuperclass();
    }
  }

  public final String getColumnName(Field paramField)
  {
    return (String)this.mColumnNames.get(paramField);
  }

  public final Collection<Field> getFields()
  {
    return this.mColumnNames.keySet();
  }

  public final String getIdName()
  {
    return this.mIdName;
  }

  public final String getTableName()
  {
    return this.mTableName;
  }

  public final Class<? extends Model> getType()
  {
    return this.mType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.TableInfo
 * JD-Core Version:    0.6.0
 */