package android.support.v4.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class MapCollections<K, V>
{
  MapCollections<K, V>.EntrySet mEntrySet;
  MapCollections<K, V>.KeySet mKeySet;
  MapCollections<K, V>.ValuesCollection mValues;

  public static <K, V> boolean containsAllHelper(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      if (!paramMap.containsKey(localIterator.next()))
        return false;
    return true;
  }

  public static <T> boolean equalsSetHelper(Set<T> paramSet, Object paramObject)
  {
    if (paramSet == paramObject);
    while (true)
    {
      return true;
      if (!(paramObject instanceof Set))
        break;
      Set localSet = (Set)paramObject;
      try
      {
        if (paramSet.size() == localSet.size())
        {
          boolean bool = paramSet.containsAll(localSet);
          if (bool)
            continue;
        }
        return false;
      }
      catch (NullPointerException localNullPointerException)
      {
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
        return false;
      }
    }
    return false;
  }

  public static <K, V> boolean removeAllHelper(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      paramMap.remove(localIterator.next());
    return i != paramMap.size();
  }

  public static <K, V> boolean retainAllHelper(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      if (paramCollection.contains(localIterator.next()))
        continue;
      localIterator.remove();
    }
    return i != paramMap.size();
  }

  protected abstract void colClear();

  protected abstract Object colGetEntry(int paramInt1, int paramInt2);

  protected abstract Map<K, V> colGetMap();

  protected abstract int colGetSize();

  protected abstract int colIndexOfKey(Object paramObject);

  protected abstract int colIndexOfValue(Object paramObject);

  protected abstract void colPut(K paramK, V paramV);

  protected abstract void colRemoveAt(int paramInt);

  protected abstract V colSetValue(int paramInt, V paramV);

  public Set<Map.Entry<K, V>> getEntrySet()
  {
    if (this.mEntrySet == null)
      this.mEntrySet = new MapCollections.EntrySet(this);
    return this.mEntrySet;
  }

  public Set<K> getKeySet()
  {
    if (this.mKeySet == null)
      this.mKeySet = new MapCollections.KeySet(this);
    return this.mKeySet;
  }

  public Collection<V> getValues()
  {
    if (this.mValues == null)
      this.mValues = new MapCollections.ValuesCollection(this);
    return this.mValues;
  }

  public Object[] toArrayHelper(int paramInt)
  {
    int i = colGetSize();
    Object[] arrayOfObject = new Object[i];
    for (int j = 0; j < i; j++)
      arrayOfObject[j] = colGetEntry(j, paramInt);
    return arrayOfObject;
  }

  public <T> T[] toArrayHelper(T[] paramArrayOfT, int paramInt)
  {
    int i = colGetSize();
    if (paramArrayOfT.length < i);
    for (Object localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i); ; localObject = paramArrayOfT)
    {
      for (int j = 0; j < i; j++)
        localObject[j] = colGetEntry(j, paramInt);
      if (localObject.length > i)
        localObject[i] = null;
      return localObject;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.util.MapCollections
 * JD-Core Version:    0.6.0
 */