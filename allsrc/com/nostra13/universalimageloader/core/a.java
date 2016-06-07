package com.nostra13.universalimageloader.core;

import android.content.Context;
import com.alipay.a.a.c;
import com.alipay.a.a.d;
import com.nostra13.universalimageloader.a.a.a.a.h;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.assist.deque.LIFOLinkedBlockingDeque;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class a
  implements c, d
{
  public static com.nostra13.universalimageloader.a.a.a a(Context paramContext, com.nostra13.universalimageloader.a.a.b.a parama, long paramLong, int paramInt)
  {
    Object localObject = com.arcsoft.hpay100.a.a.a(paramContext, false);
    File localFile = new File((File)localObject, "uil-images");
    if ((localFile.exists()) || (localFile.mkdir()))
      localObject = localFile;
    if ((paramLong > 0L) || (paramInt > 0))
    {
      h localh = new h(com.arcsoft.hpay100.a.a.n(paramContext), parama, paramLong, paramInt);
      localh.a((File)localObject);
      return localh;
    }
    return (com.nostra13.universalimageloader.a.a.a)new com.nostra13.universalimageloader.a.a.a.b(com.arcsoft.hpay100.a.a.m(paramContext), (File)localObject, parama);
  }

  public static Executor a()
  {
    return Executors.newCachedThreadPool(a(5, "uil-pool-d-"));
  }

  public static Executor a(int paramInt1, int paramInt2, QueueProcessingType paramQueueProcessingType)
  {
    int i;
    if (paramQueueProcessingType == QueueProcessingType.LIFO)
    {
      i = 1;
      if (i == 0)
        break label56;
    }
    label56: for (Object localObject = new LIFOLinkedBlockingDeque(); ; localObject = new LinkedBlockingQueue())
    {
      BlockingQueue localBlockingQueue = (BlockingQueue)localObject;
      return new ThreadPoolExecutor(paramInt1, paramInt1, 0L, TimeUnit.MILLISECONDS, localBlockingQueue, a(paramInt2, "uil-pool-"));
      i = 0;
      break;
    }
  }

  private static ThreadFactory a(int paramInt, String paramString)
  {
    return new b(paramInt, paramString);
  }

  public Object a(Object paramObject)
  {
    Object[] arrayOfObject = (Object[])paramObject;
    ArrayList localArrayList = new ArrayList();
    int i = arrayOfObject.length;
    for (int j = 0; j < i; j++)
      localArrayList.add(com.alipay.a.a.b.b(arrayOfObject[j]));
    return localArrayList;
  }

  public Object a(Object paramObject, Type paramType)
  {
    Object localObject;
    if (!paramObject.getClass().equals(org.json.alipay.a.class))
      localObject = null;
    while (true)
    {
      return localObject;
      org.json.alipay.a locala = (org.json.alipay.a)paramObject;
      if ((paramType instanceof GenericArrayType))
        throw new IllegalArgumentException("Does not support generic array!");
      Class localClass = ((Class)paramType).getComponentType();
      int i = locala.a();
      localObject = Array.newInstance(localClass, i);
      for (int j = 0; j < i; j++)
        Array.set(localObject, j, com.alipay.a.a.a.a(locala.a(j), localClass));
    }
  }

  public boolean a(Class<?> paramClass)
  {
    return paramClass.isArray();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.a
 * JD-Core Version:    0.6.0
 */