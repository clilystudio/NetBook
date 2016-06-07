package com.ximalaya.ting.android.opensdk.util;

import android.content.ContentValues;
import java.util.List;
import org.litepal.b.d;

public class XiMaDataSupport extends d
{
  public <T> void findAll(IDbDataCallBack<List<T>> paramIDbDataCallBack, Class<T> paramClass, boolean paramBoolean, long[] paramArrayOfLong)
  {
    monitorenter;
    try
    {
      new XiMaDataSupport.3(this, paramClass, paramBoolean, paramArrayOfLong, paramIDbDataCallBack).execute(new Void[0]);
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

  public void save(IDbDataCallBack<Boolean> paramIDbDataCallBack)
  {
    monitorenter;
    try
    {
      new XiMaDataSupport.1(this, paramIDbDataCallBack).myexec(new Void[0]);
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

  public void updateAll(IDbDataCallBack<Integer> paramIDbDataCallBack, Class<?> paramClass, ContentValues paramContentValues, String[] paramArrayOfString)
  {
    monitorenter;
    try
    {
      new XiMaDataSupport.2(this, paramClass, paramContentValues, paramArrayOfString, paramIDbDataCallBack).execute(new Void[0]);
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.XiMaDataSupport
 * JD-Core Version:    0.6.0
 */