package com.activeandroid;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.activeandroid.content.ContentProvider;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.activeandroid.serializer.TypeSerializer;
import com.activeandroid.util.Log;
import com.activeandroid.util.ReflectionUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class Model
{
  private static final int HASH_PRIME = 739;
  private final String idName = this.mTableInfo.getIdName();
  private Long mId = null;
  private final TableInfo mTableInfo = Cache.getTableInfo(getClass());

  public static void delete(Class<? extends Model> paramClass, long paramLong)
  {
    TableInfo localTableInfo = Cache.getTableInfo(paramClass);
    From localFrom = new Delete().from(paramClass);
    String str = localTableInfo.getIdName() + "=?";
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    localFrom.where(str, arrayOfObject).execute();
  }

  public static <T extends Model> T load(Class<T> paramClass, long paramLong)
  {
    TableInfo localTableInfo = Cache.getTableInfo(paramClass);
    From localFrom = new Select().from(paramClass);
    String str = localTableInfo.getIdName() + "=?";
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    return localFrom.where(str, arrayOfObject).executeSingle();
  }

  public final void delete()
  {
    SQLiteDatabase localSQLiteDatabase = Cache.openDatabase();
    String str1 = this.mTableInfo.getTableName();
    String str2 = this.idName + "=?";
    String[] arrayOfString = new String[1];
    arrayOfString[0] = getId().toString();
    localSQLiteDatabase.delete(str1, str2, arrayOfString);
    Cache.removeEntity(this);
    Cache.getContext().getContentResolver().notifyChange(ContentProvider.createUri(this.mTableInfo.getType(), this.mId), null);
  }

  public boolean equals(Object paramObject)
  {
    if (((paramObject instanceof Model)) && (this.mId != null))
    {
      Model localModel = (Model)paramObject;
      if ((!this.mId.equals(localModel.mId)) || (!this.mTableInfo.getTableName().equals(localModel.mTableInfo.getTableName())));
    }
    do
    {
      return true;
      return false;
    }
    while (this == paramObject);
    return false;
  }

  public final Long getId()
  {
    return this.mId;
  }

  protected final <T extends Model> List<T> getMany(Class<T> paramClass, String paramString)
  {
    From localFrom = new Select().from(paramClass);
    String str = Cache.getTableName(paramClass) + "." + paramString + "=?";
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getId();
    return localFrom.where(str, arrayOfObject).execute();
  }

  public int hashCode()
  {
    if (this.mId == null);
    for (int i = super.hashCode(); ; i = this.mId.hashCode())
      return 739 + i * 739 + 739 * this.mTableInfo.getTableName().hashCode();
  }

  public final void loadFromCursor(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList(Arrays.asList(paramCursor.getColumnNames()));
    Iterator localIterator = this.mTableInfo.getFields().iterator();
    Field localField1;
    Class localClass;
    int i;
    while (localIterator.hasNext())
    {
      localField1 = (Field)localIterator.next();
      String str1 = this.mTableInfo.getColumnName(localField1);
      localClass = localField1.getType();
      i = localArrayList.indexOf(str1);
      if (i < 0)
        continue;
      localField1.setAccessible(true);
    }
    while (true)
    {
      boolean bool1;
      Model localModel1;
      try
      {
        bool1 = paramCursor.isNull(i);
        TypeSerializer localTypeSerializer = Cache.getParserForType(localClass);
        if (localTypeSerializer == null)
          break label826;
        localClass = localTypeSerializer.getSerializedType();
        break label826;
        if ((localTypeSerializer == null) || (bool1))
          continue;
        localObject = localTypeSerializer.deserialize(localObject);
        if (localObject == null)
          break;
        localField2.set(this, localObject);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.e(localIllegalArgumentException.getClass().getName(), localIllegalArgumentException);
        break;
        if ((!localClass.equals(Byte.class)) && (!localClass.equals(Byte.TYPE)))
          continue;
        Integer localInteger1 = Integer.valueOf(paramCursor.getInt(i));
        localField2 = localField1;
        localObject = localInteger1;
        continue;
        if ((!localClass.equals(Short.class)) && (!localClass.equals(Short.TYPE)))
          continue;
        Integer localInteger2 = Integer.valueOf(paramCursor.getInt(i));
        localField2 = localField1;
        localObject = localInteger2;
        continue;
        if ((!localClass.equals(Integer.class)) && (!localClass.equals(Integer.TYPE)))
          continue;
        Integer localInteger3 = Integer.valueOf(paramCursor.getInt(i));
        localField2 = localField1;
        localObject = localInteger3;
        continue;
        if ((!localClass.equals(Long.class)) && (!localClass.equals(Long.TYPE)))
          continue;
        Long localLong = Long.valueOf(paramCursor.getLong(i));
        localField2 = localField1;
        localObject = localLong;
        continue;
        if ((!localClass.equals(Float.class)) && (!localClass.equals(Float.TYPE)))
          continue;
        Float localFloat = Float.valueOf(paramCursor.getFloat(i));
        localField2 = localField1;
        localObject = localFloat;
        continue;
        if ((!localClass.equals(Double.class)) && (!localClass.equals(Double.TYPE)))
          continue;
        Double localDouble = Double.valueOf(paramCursor.getDouble(i));
        localField2 = localField1;
        localObject = localDouble;
        continue;
        if ((!localClass.equals(Boolean.class)) && (!localClass.equals(Boolean.TYPE)))
          continue;
        if (paramCursor.getInt(i) == 0)
          break label840;
        bool2 = true;
        Boolean localBoolean = Boolean.valueOf(bool2);
        localField2 = localField1;
        localObject = localBoolean;
        continue;
        if ((!localClass.equals(Character.class)) && (!localClass.equals(Character.TYPE)))
          continue;
        Character localCharacter = Character.valueOf(paramCursor.getString(i).charAt(0));
        localField2 = localField1;
        localObject = localCharacter;
        continue;
        if (!localClass.equals(String.class))
          continue;
        String str3 = paramCursor.getString(i);
        localField2 = localField1;
        localObject = str3;
        continue;
        if ((!localClass.equals([Ljava.lang.Byte.class)) && (!localClass.equals([B.class)))
          continue;
        byte[] arrayOfByte = paramCursor.getBlob(i);
        localField2 = localField1;
        localObject = arrayOfByte;
        continue;
        if (!ReflectionUtils.isModel(localClass))
          continue;
        long l = paramCursor.getLong(i);
        localModel1 = Cache.getEntity(localClass, l);
        if (localModel1 != null)
          break label846;
        From localFrom = new Select().from(localClass);
        String str2 = this.idName + "=?";
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Long.valueOf(l);
        localModel1 = localFrom.where(str2, arrayOfObject).executeSingle();
        break label846;
        if (!ReflectionUtils.isSubclassOf(localClass, Enum.class))
          break label816;
        Enum localEnum = Enum.valueOf(localClass, paramCursor.getString(i));
        localField2 = localField1;
        localObject = localEnum;
        continue;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.e(localIllegalAccessException.getClass().getName(), localIllegalAccessException);
      }
      catch (SecurityException localSecurityException)
      {
        Log.e(localSecurityException.getClass().getName(), localSecurityException);
      }
      break;
      if (this.mId != null)
        Cache.addEntity(this);
      return;
      label816: Field localField2 = localField1;
      Object localObject = null;
      continue;
      label826: if (!bool1)
        continue;
      localObject = null;
      localField2 = null;
      continue;
      label840: boolean bool2 = false;
      continue;
      label846: Model localModel2 = localModel1;
      localField2 = localField1;
      localObject = localModel2;
    }
  }

  public final Long save()
  {
    SQLiteDatabase localSQLiteDatabase = Cache.openDatabase();
    ContentValues localContentValues = new ContentValues();
    Iterator localIterator = this.mTableInfo.getFields().iterator();
    Field localField;
    String str;
    Object localObject1;
    if (localIterator.hasNext())
    {
      localField = (Field)localIterator.next();
      str = this.mTableInfo.getColumnName(localField);
      localObject1 = localField.getType();
      localField.setAccessible(true);
    }
    while (true)
    {
      Object localObject3;
      Class localClass;
      try
      {
        localObject2 = localField.get(this);
        if (localObject2 == null)
          continue;
        TypeSerializer localTypeSerializer = Cache.getParserForType((Class)localObject1);
        if (localTypeSerializer == null)
          continue;
        localObject3 = localTypeSerializer.serialize(localObject2);
        if (localObject3 == null)
          break label723;
        localClass = localObject3.getClass();
        if (localClass.equals(localTypeSerializer.getSerializedType()))
          break label730;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localTypeSerializer.getSerializedType();
        arrayOfObject[1] = localClass;
        Log.w(String.format("TypeSerializer returned wrong type: expected a %s but got a %s", arrayOfObject));
        break label730;
        if (localObject2 != null)
          continue;
        localContentValues.putNull(str);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.e(localIllegalArgumentException.getClass().getName(), localIllegalArgumentException);
        break;
        if ((!localObject1.equals(Byte.class)) && (!localObject1.equals(Byte.TYPE)))
          break label251;
        localContentValues.put(str, (Byte)localObject2);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.e(localIllegalAccessException.getClass().getName(), localIllegalAccessException);
      }
      break;
      label251: if ((localObject1.equals(Short.class)) || (localObject1.equals(Short.TYPE)))
      {
        localContentValues.put(str, (Short)localObject2);
        break;
      }
      if ((localObject1.equals(Integer.class)) || (localObject1.equals(Integer.TYPE)))
      {
        localContentValues.put(str, (Integer)localObject2);
        break;
      }
      if ((localObject1.equals(Long.class)) || (localObject1.equals(Long.TYPE)))
      {
        localContentValues.put(str, (Long)localObject2);
        break;
      }
      if ((localObject1.equals(Float.class)) || (localObject1.equals(Float.TYPE)))
      {
        localContentValues.put(str, (Float)localObject2);
        break;
      }
      if ((localObject1.equals(Double.class)) || (localObject1.equals(Double.TYPE)))
      {
        localContentValues.put(str, (Double)localObject2);
        break;
      }
      if ((localObject1.equals(Boolean.class)) || (localObject1.equals(Boolean.TYPE)))
      {
        localContentValues.put(str, (Boolean)localObject2);
        break;
      }
      if ((localObject1.equals(Character.class)) || (localObject1.equals(Character.TYPE)))
      {
        localContentValues.put(str, localObject2.toString());
        break;
      }
      if (localObject1.equals(String.class))
      {
        localContentValues.put(str, localObject2.toString());
        break;
      }
      if ((localObject1.equals([Ljava.lang.Byte.class)) || (localObject1.equals([B.class)))
      {
        localContentValues.put(str, (byte[])localObject2);
        break;
      }
      if (ReflectionUtils.isModel((Class)localObject1))
      {
        localContentValues.put(str, ((Model)localObject2).getId());
        break;
      }
      if (!ReflectionUtils.isSubclassOf((Class)localObject1, Enum.class))
        break;
      localContentValues.put(str, ((Enum)localObject2).name());
      break;
      try
      {
        if (this.mId != null)
          localSQLiteDatabase.update(this.mTableInfo.getTableName(), localContentValues, this.idName + "=" + this.mId, null);
        while (true)
        {
          label666: Cache.getContext().getContentResolver().notifyChange(ContentProvider.createUri(this.mTableInfo.getType(), this.mId), null);
          return this.mId;
          this.mId = Long.valueOf(localSQLiteDatabase.insert(this.mTableInfo.getTableName(), null, localContentValues));
        }
      }
      catch (SQLException localSQLException)
      {
        break label666;
      }
      label723: Object localObject2 = localObject3;
      continue;
      label730: localObject1 = localClass;
      localObject2 = localObject3;
    }
  }

  public String toString()
  {
    return this.mTableInfo.getTableName() + "@" + getId();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.Model
 * JD-Core Version:    0.6.0
 */