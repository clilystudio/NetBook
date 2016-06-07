package com.nostra13.universalimageloader.a.b.a;

import android.graphics.Bitmap;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;

public final class a
  implements com.nostra13.universalimageloader.a.b.a
{
  private final LinkedHashMap<String, Bitmap> a;
  private final int b;
  private int c;

  public a(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.b = paramInt;
    this.a = new LinkedHashMap(0, 0.75F, true);
  }

  private static int a(Bitmap paramBitmap)
  {
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }

  private Bitmap a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException("key == null");
    monitorenter;
    try
    {
      Bitmap localBitmap = (Bitmap)this.a.get(paramString);
      return localBitmap;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  // ERROR //
  private void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 56	com/nostra13/universalimageloader/a/b/a/a:c	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 34	com/nostra13/universalimageloader/a/b/a/a:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 60	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 56	com/nostra13/universalimageloader/a/b/a/a:c	I
    //   23: ifeq +41 -> 64
    //   26: new 62	java/lang/IllegalStateException
    //   29: dup
    //   30: new 64	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 75	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 81
    //   49: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 85	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 56	com/nostra13/universalimageloader/a/b/a/a:c	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 34	com/nostra13/universalimageloader/a/b/a/a:a	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 60	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 34	com/nostra13/universalimageloader/a/b/a/a:a	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 89	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 95 1 0
    //   97: invokeinterface 101 1 0
    //   102: checkcast 103	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: ifnonnull +6 -> 113
    //   110: aload_0
    //   111: monitorexit
    //   112: return
    //   113: aload_3
    //   114: invokeinterface 106 1 0
    //   119: checkcast 108	java/lang/String
    //   122: astore 4
    //   124: aload_3
    //   125: invokeinterface 111 1 0
    //   130: checkcast 37	android/graphics/Bitmap
    //   133: astore 5
    //   135: aload_0
    //   136: getfield 34	com/nostra13/universalimageloader/a/b/a/a:a	Ljava/util/LinkedHashMap;
    //   139: aload 4
    //   141: invokevirtual 114	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   144: pop
    //   145: aload_0
    //   146: aload_0
    //   147: getfield 56	com/nostra13/universalimageloader/a/b/a/a:c	I
    //   150: aload 5
    //   152: invokestatic 116	com/nostra13/universalimageloader/a/b/a/a:a	(Landroid/graphics/Bitmap;)I
    //   155: isub
    //   156: putfield 56	com/nostra13/universalimageloader/a/b/a/a:c	I
    //   159: aload_0
    //   160: monitorexit
    //   161: goto -161 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   60	62	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	106	59	finally
    //   110	112	59	finally
    //   113	161	59	finally
  }

  private boolean a(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramBitmap == null))
      throw new NullPointerException("key == null || value == null");
    monitorenter;
    try
    {
      this.c += a(paramBitmap);
      Bitmap localBitmap = (Bitmap)this.a.put(paramString, paramBitmap);
      if (localBitmap != null)
        this.c -= a(localBitmap);
      monitorexit;
      a(this.b);
      return true;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final Collection<String> d()
  {
    monitorenter;
    try
    {
      HashSet localHashSet = new HashSet(this.a.keySet());
      return localHashSet;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final String toString()
  {
    monitorenter;
    try
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.b);
      String str = String.format("LruCache[maxSize=%d]", arrayOfObject);
      monitorexit;
      return str;
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
 * Qualified Name:     com.nostra13.universalimageloader.a.b.a.a
 * JD-Core Version:    0.6.0
 */