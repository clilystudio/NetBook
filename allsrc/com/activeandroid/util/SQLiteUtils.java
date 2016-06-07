package com.activeandroid.util;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.TableInfo;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Column.ConflictAction;
import com.activeandroid.annotation.Column.ForeignKeyAction;
import com.activeandroid.serializer.TypeSerializer;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class SQLiteUtils
{
  public static final boolean FOREIGN_KEYS_SUPPORTED;
  private static final HashMap<Class<?>, SQLiteUtils.SQLiteType> TYPE_MAP;
  private static HashMap<String, List<String>> sIndexGroupMap;
  private static HashMap<String, Column.ConflictAction> sOnUniqueConflictsMap;
  private static HashMap<String, List<String>> sUniqueGroupMap;

  static
  {
    if (Build.VERSION.SDK_INT >= 8);
    for (boolean bool = true; ; bool = false)
    {
      FOREIGN_KEYS_SUPPORTED = bool;
      TYPE_MAP = new SQLiteUtils.1();
      return;
    }
  }

  public static String createColumnDefinition(TableInfo paramTableInfo, Field paramField)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Class localClass1 = paramField.getType();
    String str = paramTableInfo.getColumnName(paramField);
    TypeSerializer localTypeSerializer = Cache.getParserForType(paramField.getType());
    Column localColumn = (Column)paramField.getAnnotation(Column.class);
    if (localTypeSerializer != null);
    for (Class localClass2 = localTypeSerializer.getSerializedType(); ; localClass2 = localClass1)
    {
      if (TYPE_MAP.containsKey(localClass2))
      {
        localStringBuilder.append(str);
        localStringBuilder.append(" ");
        localStringBuilder.append(((SQLiteUtils.SQLiteType)TYPE_MAP.get(localClass2)).toString());
        if (TextUtils.isEmpty(localStringBuilder))
          break label430;
        if (!str.equals(paramTableInfo.getIdName()))
          break label322;
        localStringBuilder.append(" PRIMARY KEY AUTOINCREMENT");
        label122: if ((FOREIGN_KEYS_SUPPORTED) && (ReflectionUtils.isModel(localClass2)))
        {
          localStringBuilder.append(" REFERENCES ");
          localStringBuilder.append(Cache.getTableInfo(localClass2).getTableName());
          localStringBuilder.append("(" + paramTableInfo.getIdName() + ")");
          localStringBuilder.append(" ON DELETE ");
          localStringBuilder.append(localColumn.onDelete().toString().replace("_", " "));
          localStringBuilder.append(" ON UPDATE ");
          localStringBuilder.append(localColumn.onUpdate().toString().replace("_", " "));
        }
      }
      while (true)
      {
        return localStringBuilder.toString();
        if (ReflectionUtils.isModel(localClass2))
        {
          localStringBuilder.append(str);
          localStringBuilder.append(" ");
          localStringBuilder.append(SQLiteUtils.SQLiteType.INTEGER.toString());
          break;
        }
        if (!ReflectionUtils.isSubclassOf(localClass2, Enum.class))
          break;
        localStringBuilder.append(str);
        localStringBuilder.append(" ");
        localStringBuilder.append(SQLiteUtils.SQLiteType.TEXT.toString());
        break;
        label322: if (localColumn == null)
          break label122;
        if (localColumn.length() >= 0)
        {
          localStringBuilder.append("(");
          localStringBuilder.append(localColumn.length());
          localStringBuilder.append(")");
        }
        if (localColumn.notNull())
        {
          localStringBuilder.append(" NOT NULL ON CONFLICT ");
          localStringBuilder.append(localColumn.onNullConflict().toString());
        }
        if (!localColumn.unique())
          break label122;
        localStringBuilder.append(" UNIQUE ON CONFLICT ");
        localStringBuilder.append(localColumn.onUniqueConflict().toString());
        break label122;
        label430: Log.e("No type mapping for: " + localClass2.toString());
      }
    }
  }

  public static void createIndexColumnDefinition(TableInfo paramTableInfo, Field paramField)
  {
    String str1 = paramTableInfo.getColumnName(paramField);
    Column localColumn = (Column)paramField.getAnnotation(Column.class);
    if (paramField.getName().equals("mId"));
    while (true)
    {
      return;
      if (localColumn.index())
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(str1);
        sIndexGroupMap.put(str1, localArrayList);
      }
      for (String str2 : localColumn.indexGroups())
      {
        if (TextUtils.isEmpty(str2))
          continue;
        Object localObject = (List)sIndexGroupMap.get(str2);
        if (localObject == null)
          localObject = new ArrayList();
        ((List)localObject).add(str1);
        sIndexGroupMap.put(str2, localObject);
      }
    }
  }

  public static String[] createIndexDefinition(TableInfo paramTableInfo)
  {
    ArrayList localArrayList = new ArrayList();
    sIndexGroupMap = new HashMap();
    Iterator localIterator1 = paramTableInfo.getFields().iterator();
    while (localIterator1.hasNext())
      createIndexColumnDefinition(paramTableInfo, (Field)localIterator1.next());
    if (sIndexGroupMap.isEmpty())
      return new String[0];
    Iterator localIterator2 = sIndexGroupMap.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = ("index_" + paramTableInfo.getTableName() + "_" + (String)localEntry.getKey());
      arrayOfObject[1] = paramTableInfo.getTableName();
      arrayOfObject[2] = TextUtils.join(", ", (Iterable)localEntry.getValue());
      localArrayList.add(String.format("CREATE INDEX IF NOT EXISTS %s on %s(%s);", arrayOfObject));
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  public static String createTableDefinition(TableInfo paramTableInfo)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramTableInfo.getFields().iterator();
    while (localIterator.hasNext())
    {
      String str = createColumnDefinition(paramTableInfo, (Field)localIterator.next());
      if (TextUtils.isEmpty(str))
        continue;
      localArrayList.add(str);
    }
    localArrayList.addAll(createUniqueDefinition(paramTableInfo));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramTableInfo.getTableName();
    arrayOfObject[1] = TextUtils.join(", ", localArrayList);
    return String.format("CREATE TABLE IF NOT EXISTS %s (%s);", arrayOfObject);
  }

  public static void createUniqueColumnDefinition(TableInfo paramTableInfo, Field paramField)
  {
    String str1 = paramTableInfo.getColumnName(paramField);
    Column localColumn = (Column)paramField.getAnnotation(Column.class);
    if (paramField.getName().equals("mId"));
    while (true)
    {
      return;
      String[] arrayOfString = localColumn.uniqueGroups();
      Column.ConflictAction[] arrayOfConflictAction = localColumn.onUniqueConflicts();
      if (arrayOfString.length != arrayOfConflictAction.length)
        continue;
      for (int i = 0; i < arrayOfString.length; i++)
      {
        String str2 = arrayOfString[i];
        Column.ConflictAction localConflictAction = arrayOfConflictAction[i];
        if (TextUtils.isEmpty(str2))
          continue;
        Object localObject = (List)sUniqueGroupMap.get(str2);
        if (localObject == null)
          localObject = new ArrayList();
        ((List)localObject).add(str1);
        sUniqueGroupMap.put(str2, localObject);
        sOnUniqueConflictsMap.put(str2, localConflictAction);
      }
    }
  }

  public static ArrayList<String> createUniqueDefinition(TableInfo paramTableInfo)
  {
    ArrayList localArrayList = new ArrayList();
    sUniqueGroupMap = new HashMap();
    sOnUniqueConflictsMap = new HashMap();
    Iterator localIterator1 = paramTableInfo.getFields().iterator();
    while (localIterator1.hasNext())
      createUniqueColumnDefinition(paramTableInfo, (Field)localIterator1.next());
    if (sUniqueGroupMap.isEmpty())
      return localArrayList;
    Iterator localIterator2 = sUniqueGroupMap.keySet().iterator();
    while (localIterator2.hasNext())
    {
      String str = (String)localIterator2.next();
      List localList = (List)sUniqueGroupMap.get(str);
      Column.ConflictAction localConflictAction = (Column.ConflictAction)sOnUniqueConflictsMap.get(str);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = TextUtils.join(", ", localList);
      arrayOfObject[1] = localConflictAction.toString();
      localArrayList.add(String.format("UNIQUE (%s) ON CONFLICT %s", arrayOfObject));
    }
    return localArrayList;
  }

  public static void execSql(String paramString)
  {
    Cache.openDatabase().execSQL(paramString);
  }

  public static void execSql(String paramString, Object[] paramArrayOfObject)
  {
    Cache.openDatabase().execSQL(paramString, paramArrayOfObject);
  }

  public static int intQuery(String paramString, String[] paramArrayOfString)
  {
    Cursor localCursor = Cache.openDatabase().rawQuery(paramString, paramArrayOfString);
    int i = processIntCursor(localCursor);
    localCursor.close();
    return i;
  }

  public static List<String> lexSqlScript(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    StringBuilder localStringBuilder = new StringBuilder(100);
    int i = 0;
    int j = 0;
    int k = 0;
    while (k < paramString.length())
    {
      char c = paramString.charAt(k);
      if ((c == ';') && (j == 0) && (i == 0))
      {
        localArrayList.add(localStringBuilder.toString());
        localStringBuilder = new StringBuilder(100);
        i = 0;
        j = 0;
        k++;
        continue;
      }
      if ((c == '\'') && (i == 0))
      {
        if (j == 0)
          j = 1;
      }
      else
        label108: if ((c != '\\') || (i != 0))
          break label137;
      label137: for (i = 1; ; i = 0)
      {
        localStringBuilder.append(c);
        break;
        j = 0;
        break label108;
      }
    }
    if (localStringBuilder.length() > 0)
      localArrayList.add(localStringBuilder.toString());
    return localArrayList;
  }

  public static <T extends Model> List<T> processCursor(Class<? extends Model> paramClass, Cursor paramCursor)
  {
    String str = Cache.getTableInfo(paramClass).getIdName();
    ArrayList localArrayList1 = new ArrayList();
    try
    {
      Constructor localConstructor = paramClass.getConstructor(new Class[0]);
      if (paramCursor.moveToFirst())
      {
        ArrayList localArrayList2 = new ArrayList(Arrays.asList(paramCursor.getColumnNames()));
        boolean bool;
        do
        {
          Model localModel = Cache.getEntity(paramClass, paramCursor.getLong(localArrayList2.indexOf(str)));
          if (localModel == null)
            localModel = (Model)localConstructor.newInstance(new Object[0]);
          localModel.loadFromCursor(paramCursor);
          localArrayList1.add(localModel);
          bool = paramCursor.moveToNext();
        }
        while (bool);
      }
      return localArrayList1;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new RuntimeException("Your model " + paramClass.getName() + " does not define a default constructor. The default constructor is required for " + "now in ActiveAndroid models, as the process to populate the ORM model is : " + "1. instantiate default model 2. populate fields");
    }
    catch (Exception localException)
    {
      Log.e("Failed to process cursor.", localException);
    }
    return localArrayList1;
  }

  private static int processIntCursor(Cursor paramCursor)
  {
    boolean bool = paramCursor.moveToFirst();
    int i = 0;
    if (bool)
      i = paramCursor.getInt(0);
    return i;
  }

  public static <T extends Model> List<T> rawQuery(Class<? extends Model> paramClass, String paramString, String[] paramArrayOfString)
  {
    Cursor localCursor = Cache.openDatabase().rawQuery(paramString, paramArrayOfString);
    List localList = processCursor(paramClass, localCursor);
    localCursor.close();
    return localList;
  }

  public static <T extends Model> T rawQuerySingle(Class<? extends Model> paramClass, String paramString, String[] paramArrayOfString)
  {
    List localList = rawQuery(paramClass, paramString, paramArrayOfString);
    if (localList.size() > 0)
      return (Model)localList.get(0);
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.SQLiteUtils
 * JD-Core Version:    0.6.0
 */