package org.litepal.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.design.widget.K;
import com.arcsoft.hpay100.a.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.d.c;
import org.litepal.exceptions.DataSupportException;

public class d
{
  private Map<String, Set<Long>> associatedModelsMapForJoinTable;
  private Map<String, Set<Long>> associatedModelsMapWithFK;
  private Map<String, Long> associatedModelsMapWithoutFK;
  private long baseObjId;
  private List<String> fieldsToSetToDefault;
  private List<String> listToClearAssociatedFK;
  private List<String> listToClearSelfFK;

  public static double average(Class<?> paramClass, String paramString)
  {
    monitorenter;
    try
    {
      double d = average(a.S(paramClass.getSimpleName()), paramString);
      monitorexit;
      return d;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static double average(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      double d = new b().a(paramString1, paramString2);
      monitorexit;
      return d;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private void clearFKNameList()
  {
    getListToClearSelfFK().clear();
    getListToClearAssociatedFK().clear();
  }

  private void clearIdOfModelForJoinTable()
  {
    Iterator localIterator = getAssociatedModelsMapForJoinTable().keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.associatedModelsMapForJoinTable.clear();
        return;
      }
      String str = (String)localIterator.next();
      ((Set)this.associatedModelsMapForJoinTable.get(str)).clear();
    }
  }

  private void clearIdOfModelWithFK()
  {
    Iterator localIterator = getAssociatedModelsMapWithFK().keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.associatedModelsMapWithFK.clear();
        return;
      }
      String str = (String)localIterator.next();
      ((Set)this.associatedModelsMapWithFK.get(str)).clear();
    }
  }

  private void clearIdOfModelWithoutFK()
  {
    getAssociatedModelsMapWithoutFK().clear();
  }

  public static int count(Class<?> paramClass)
  {
    monitorenter;
    try
    {
      int i = count(a.S(paramClass.getSimpleName()));
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static int count(String paramString)
  {
    monitorenter;
    try
    {
      int i = new b().a(paramString);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static int delete(Class<?> paramClass, long paramLong)
  {
    monitorenter;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c.a();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i = new g(localSQLiteDatabase).a(paramClass, paramLong);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        monitorexit;
        return i;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public static int deleteAll(Class<?> paramClass, String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      int i = new g(c.a()).a(paramClass, paramArrayOfString);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static int deleteAll(String paramString, String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      int i = new g(c.a()).a(paramString, paramArrayOfString);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static <T> T find(Class<T> paramClass, long paramLong)
  {
    monitorenter;
    try
    {
      Object localObject2 = find(paramClass, paramLong, false);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T find(Class<T> paramClass, long paramLong, boolean paramBoolean)
  {
    monitorenter;
    try
    {
      Object localObject2 = new k(c.a()).a(paramClass, paramLong, paramBoolean);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> List<T> findAll(Class<T> paramClass, boolean paramBoolean, long[] paramArrayOfLong)
  {
    monitorenter;
    try
    {
      List localList = new k(c.a()).a(paramClass, paramBoolean, paramArrayOfLong);
      monitorexit;
      return localList;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static <T> List<T> findAll(Class<T> paramClass, long[] paramArrayOfLong)
  {
    monitorenter;
    try
    {
      List localList = findAll(paramClass, false, paramArrayOfLong);
      monitorexit;
      return localList;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static Cursor findBySQL(String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      a.c(paramArrayOfString);
      Cursor localCursor = null;
      if (paramArrayOfString == null);
      int i;
      do
      {
        return localCursor;
        i = paramArrayOfString.length;
        localCursor = null;
      }
      while (i <= 0);
      int j = paramArrayOfString.length;
      String[] arrayOfString = null;
      if (j == 1);
      while (true)
      {
        localCursor = c.a().rawQuery(paramArrayOfString[0], arrayOfString);
        break;
        arrayOfString = new String[-1 + paramArrayOfString.length];
        System.arraycopy(paramArrayOfString, 1, arrayOfString, 0, -1 + paramArrayOfString.length);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static <T> T findFirst(Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = findFirst(paramClass, false);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T findFirst(Class<T> paramClass, boolean paramBoolean)
  {
    monitorenter;
    try
    {
      Object localObject2 = new k(c.a()).a(paramClass, paramBoolean);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T findLast(Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = findLast(paramClass, false);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T findLast(Class<T> paramClass, boolean paramBoolean)
  {
    monitorenter;
    try
    {
      Object localObject2 = new k(c.a()).b(paramClass, paramBoolean);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static b limit(int paramInt)
  {
    monitorenter;
    try
    {
      b localb = new b();
      String.valueOf(paramInt);
      monitorexit;
      return localb;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static <T> T max(Class<?> paramClass, String paramString, Class<T> paramClass1)
  {
    monitorenter;
    try
    {
      Object localObject2 = max(a.S(paramClass.getSimpleName()), paramString, paramClass1);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T max(String paramString1, String paramString2, Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = new b().a(paramString1, paramString2, paramClass);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T min(Class<?> paramClass, String paramString, Class<T> paramClass1)
  {
    monitorenter;
    try
    {
      Object localObject2 = min(a.S(paramClass.getSimpleName()), paramString, paramClass1);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T min(String paramString1, String paramString2, Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = new b().b(paramString1, paramString2, paramClass);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static b offset(int paramInt)
  {
    monitorenter;
    try
    {
      b localb = new b();
      String.valueOf(paramInt);
      monitorexit;
      return localb;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static b order(String paramString)
  {
    monitorenter;
    try
    {
      b localb = new b();
      monitorexit;
      return localb;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static <T extends d> void saveAll(Collection<T> paramCollection)
  {
    monitorenter;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c.a();
      localSQLiteDatabase.beginTransaction();
      try
      {
        new l(localSQLiteDatabase).b(paramCollection);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        monitorexit;
        return;
      }
      catch (Exception localException)
      {
        throw new DataSupportException(localException.getMessage());
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public static b select(String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      b localb = new b();
      monitorexit;
      return localb;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static <T> T sum(Class<?> paramClass, String paramString, Class<T> paramClass1)
  {
    monitorenter;
    try
    {
      Object localObject2 = sum(a.S(paramClass.getSimpleName()), paramString, paramClass1);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static <T> T sum(String paramString1, String paramString2, Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = new b().c(paramString1, paramString2, paramClass);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public static int update(Class<?> paramClass, ContentValues paramContentValues, long paramLong)
  {
    monitorenter;
    try
    {
      int i = new m(c.a()).a(paramClass, paramLong, paramContentValues);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static int updateAll(Class<?> paramClass, ContentValues paramContentValues, String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      int i = updateAll(a.S(paramClass.getSimpleName()), paramContentValues, paramArrayOfString);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static int updateAll(String paramString, ContentValues paramContentValues, String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      int i = new m(c.a()).a(paramString, paramContentValues, paramArrayOfString);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static b where(String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      b localb = new b();
      localb.a = paramArrayOfString;
      monitorexit;
      return localb;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  void addAssociatedModelForJoinTable(String paramString, long paramLong)
  {
    Set localSet = (Set)getAssociatedModelsMapForJoinTable().get(paramString);
    if (localSet == null)
    {
      HashSet localHashSet = new HashSet();
      localHashSet.add(Long.valueOf(paramLong));
      this.associatedModelsMapForJoinTable.put(paramString, localHashSet);
      return;
    }
    localSet.add(Long.valueOf(paramLong));
  }

  void addAssociatedModelWithFK(String paramString, long paramLong)
  {
    Set localSet = (Set)getAssociatedModelsMapWithFK().get(paramString);
    if (localSet == null)
    {
      HashSet localHashSet = new HashSet();
      localHashSet.add(Long.valueOf(paramLong));
      this.associatedModelsMapWithFK.put(paramString, localHashSet);
      return;
    }
    localSet.add(Long.valueOf(paramLong));
  }

  void addAssociatedModelWithoutFK(String paramString, long paramLong)
  {
    getAssociatedModelsMapWithoutFK().put(paramString, Long.valueOf(paramLong));
  }

  void addAssociatedTableNameToClearFK(String paramString)
  {
    List localList = getListToClearAssociatedFK();
    if (!localList.contains(paramString))
      localList.add(paramString);
  }

  void addEmptyModelForJoinTable(String paramString)
  {
    if ((Set)getAssociatedModelsMapForJoinTable().get(paramString) == null)
    {
      HashSet localHashSet = new HashSet();
      this.associatedModelsMapForJoinTable.put(paramString, localHashSet);
    }
  }

  void addFKNameToClearSelf(String paramString)
  {
    List localList = getListToClearSelfFK();
    if (!localList.contains(paramString))
      localList.add(paramString);
  }

  void clearAssociatedData()
  {
    clearIdOfModelWithFK();
    clearIdOfModelWithoutFK();
    clearIdOfModelForJoinTable();
    clearFKNameList();
  }

  public int delete()
  {
    monitorenter;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c.a();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i = new g(localSQLiteDatabase).b(this);
        this.baseObjId = 0L;
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        monitorexit;
        return i;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  Map<String, Set<Long>> getAssociatedModelsMapForJoinTable()
  {
    if (this.associatedModelsMapForJoinTable == null)
      this.associatedModelsMapForJoinTable = new HashMap();
    return this.associatedModelsMapForJoinTable;
  }

  Map<String, Set<Long>> getAssociatedModelsMapWithFK()
  {
    if (this.associatedModelsMapWithFK == null)
      this.associatedModelsMapWithFK = new HashMap();
    return this.associatedModelsMapWithFK;
  }

  Map<String, Long> getAssociatedModelsMapWithoutFK()
  {
    if (this.associatedModelsMapWithoutFK == null)
      this.associatedModelsMapWithoutFK = new HashMap();
    return this.associatedModelsMapWithoutFK;
  }

  protected long getBaseObjId()
  {
    return this.baseObjId;
  }

  protected String getClassName()
  {
    return getClass().getName();
  }

  List<String> getFieldsToSetToDefault()
  {
    if (this.fieldsToSetToDefault == null)
      this.fieldsToSetToDefault = new ArrayList();
    return this.fieldsToSetToDefault;
  }

  List<String> getListToClearAssociatedFK()
  {
    if (this.listToClearAssociatedFK == null)
      this.listToClearAssociatedFK = new ArrayList();
    return this.listToClearAssociatedFK;
  }

  List<String> getListToClearSelfFK()
  {
    if (this.listToClearSelfFK == null)
      this.listToClearSelfFK = new ArrayList();
    return this.listToClearSelfFK;
  }

  protected String getTableName()
  {
    return a.S(getClass().getSimpleName());
  }

  public boolean isSaved()
  {
    return this.baseObjId > 0L;
  }

  void resetBaseObjId()
  {
    this.baseObjId = 0L;
  }

  public boolean save()
  {
    monitorenter;
    try
    {
      saveThrows();
      i = 1;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        int i = 0;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void save$7687e54b(K paramK)
  {
    monitorenter;
    try
    {
      new e(this, paramK).execute(new Void[0]);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public void saveThrows()
  {
    monitorenter;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c.a();
      localSQLiteDatabase.beginTransaction();
      try
      {
        new l(localSQLiteDatabase).b(this);
        clearAssociatedData();
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        monitorexit;
        return;
      }
      catch (Exception localException)
      {
        throw new DataSupportException(localException.getMessage());
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public void setToDefault(String paramString)
  {
    getFieldsToSetToDefault().add(paramString);
  }

  public int update(long paramLong)
  {
    monitorenter;
    try
    {
      int i = new m(c.a()).b(this, paramLong);
      getFieldsToSetToDefault().clear();
      return i;
    }
    catch (Exception localException)
    {
      throw new DataSupportException(localException.getMessage());
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public int updateAll(String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      int i = new m(c.a()).a(this, paramArrayOfString);
      getFieldsToSetToDefault().clear();
      return i;
    }
    catch (Exception localException)
    {
      throw new DataSupportException(localException.getMessage());
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.d
 * JD-Core Version:    0.6.0
 */