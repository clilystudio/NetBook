package com.mob.tools.b;

import com.mob.tools.gui.i;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class h
{
  private static HashSet<String> a;
  private static HashMap<String, Class<?>> b;
  private static i<String, Method> c;

  static
  {
    HashSet localHashSet = new HashSet();
    a = localHashSet;
    localHashSet.add("java.lang");
    a.add("java.io");
    a.add("java.net");
    a.add("java.util");
    a.add("com.mob.tools");
    a.add("com.mob.tools.gui");
    a.add("com.mob.tools.log");
    a.add("com.mob.tools.network");
    a.add("com.mob.tools.utils");
    b = new HashMap();
    c = new i(25);
    new i(5);
  }

  public static <T> T a(Object paramObject, String paramString)
  {
    try
    {
      Object localObject = b(paramObject, paramString);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof NoSuchFieldException))
        throw localThrowable;
    }
    throw new Throwable("className: " + paramObject.getClass() + ", fieldName: " + paramString, localThrowable);
  }

  public static <T> T a(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    while (true)
    {
      int j;
      try
      {
        Class localClass1 = paramObject.getClass();
        String str = localClass1.getName() + "#" + paramString + "#" + paramArrayOfObject.length;
        Method localMethod1 = (Method)c.a(str);
        Class[] arrayOfClass = a(paramArrayOfObject);
        if ((localMethod1 == null) || (Modifier.isStatic(localMethod1.getModifiers())) || (!a(localMethod1.getParameterTypes(), arrayOfClass)))
          continue;
        localMethod1.setAccessible(true);
        if (localMethod1.getReturnType() != Void.TYPE)
          continue;
        localMethod1.invoke(paramObject, paramArrayOfObject);
        return null;
        return localMethod1.invoke(paramObject, paramArrayOfObject);
        ArrayList localArrayList = new ArrayList();
        Class localClass2 = localClass1;
        if (localClass2 == null)
          continue;
        localArrayList.add(localClass2);
        localClass2 = localClass2.getSuperclass();
        continue;
        Iterator localIterator = localArrayList.iterator();
        if (!localIterator.hasNext())
          continue;
        Method[] arrayOfMethod = ((Class)localIterator.next()).getDeclaredMethods();
        int i = arrayOfMethod.length;
        j = 0;
        if (j >= i)
          continue;
        Method localMethod2 = arrayOfMethod[j];
        if ((localMethod2.getName().equals(paramString)) && (!Modifier.isStatic(localMethod2.getModifiers())) && (a(localMethod2.getParameterTypes(), arrayOfClass)))
        {
          c.a(str, localMethod2);
          localMethod2.setAccessible(true);
          if (localMethod2.getReturnType() != Void.TYPE)
            continue;
          localMethod2.invoke(paramObject, paramArrayOfObject);
          return null;
          return localMethod2.invoke(paramObject, paramArrayOfObject);
          throw new NoSuchMethodException("className: " + paramObject.getClass() + ", methodName: " + paramString);
        }
      }
      catch (Throwable localThrowable)
      {
        if (!(localThrowable instanceof NoSuchMethodException))
          continue;
        throw localThrowable;
        throw new Throwable("className: " + paramObject.getClass() + ", methodName: " + paramString, localThrowable);
      }
      j++;
    }
  }

  public static <T> T a(String paramString1, String paramString2)
  {
    try
    {
      Object localObject = c(paramString1, paramString2);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof NoSuchFieldException))
        throw localThrowable;
    }
    throw new Throwable("className: " + paramString1 + ", fieldName: " + paramString2, localThrowable);
  }

  // ERROR //
  public static void a(Object paramObject1, String paramString, Object paramObject2)
  {
    // Byte code:
    //   0: new 146	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 147	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: invokevirtual 74	java/lang/Object:getClass	()Ljava/lang/Class;
    //   12: astore 5
    //   14: aload 5
    //   16: ifnull +20 -> 36
    //   19: aload_3
    //   20: aload 5
    //   22: invokevirtual 148	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   25: pop
    //   26: aload 5
    //   28: invokevirtual 151	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   31: astore 5
    //   33: goto -19 -> 14
    //   36: aload_3
    //   37: invokevirtual 155	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   40: astore 7
    //   42: aload 7
    //   44: invokeinterface 161 1 0
    //   49: ifeq +57 -> 106
    //   52: aload 7
    //   54: invokeinterface 165 1 0
    //   59: checkcast 94	java/lang/Class
    //   62: astore 8
    //   64: aload 8
    //   66: aload_1
    //   67: invokevirtual 191	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   70: astore 11
    //   72: aload 11
    //   74: astore 10
    //   76: aload 10
    //   78: ifnull -36 -> 42
    //   81: aload 10
    //   83: invokevirtual 194	java/lang/reflect/Field:getModifiers	()I
    //   86: invokestatic 120	java/lang/reflect/Modifier:isStatic	(I)Z
    //   89: ifne -47 -> 42
    //   92: aload 10
    //   94: iconst_1
    //   95: invokevirtual 195	java/lang/reflect/Field:setAccessible	(Z)V
    //   98: aload 10
    //   100: aload_0
    //   101: aload_2
    //   102: invokevirtual 199	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   105: return
    //   106: new 63	java/lang/NoSuchFieldException
    //   109: dup
    //   110: new 65	java/lang/StringBuilder
    //   113: dup
    //   114: ldc 67
    //   116: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   119: aload_0
    //   120: invokevirtual 74	java/lang/Object:getClass	()Ljava/lang/Class;
    //   123: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   126: ldc 80
    //   128: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload_1
    //   132: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: ldc 201
    //   137: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_2
    //   141: invokestatic 205	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   144: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokespecial 206	java/lang/NoSuchFieldException:<init>	(Ljava/lang/String;)V
    //   153: athrow
    //   154: astore 4
    //   156: aload 4
    //   158: instanceof 63
    //   161: ifeq +6 -> 167
    //   164: aload 4
    //   166: athrow
    //   167: new 59	java/lang/Throwable
    //   170: dup
    //   171: new 65	java/lang/StringBuilder
    //   174: dup
    //   175: ldc 67
    //   177: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokevirtual 74	java/lang/Object:getClass	()Ljava/lang/Class;
    //   184: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   187: ldc 80
    //   189: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: aload_1
    //   193: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc 201
    //   198: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_2
    //   202: invokestatic 205	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   205: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: aload 4
    //   213: invokespecial 90	java/lang/Throwable:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   216: athrow
    //   217: astore 9
    //   219: aconst_null
    //   220: astore 10
    //   222: goto -146 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	154	java/lang/Throwable
    //   19	33	154	java/lang/Throwable
    //   36	42	154	java/lang/Throwable
    //   42	64	154	java/lang/Throwable
    //   81	105	154	java/lang/Throwable
    //   106	154	154	java/lang/Throwable
    //   64	72	217	java/lang/Throwable
  }

  public static void a(String paramString)
  {
    b(null, paramString);
  }

  // ERROR //
  public static void a(String paramString1, String paramString2, Object paramObject)
  {
    // Byte code:
    //   0: new 146	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 147	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: invokestatic 213	com/mob/tools/b/h:b	(Ljava/lang/String;)Ljava/lang/Class;
    //   12: astore 5
    //   14: aload 5
    //   16: ifnull +20 -> 36
    //   19: aload_3
    //   20: aload 5
    //   22: invokevirtual 148	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   25: pop
    //   26: aload 5
    //   28: invokevirtual 151	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   31: astore 5
    //   33: goto -19 -> 14
    //   36: aload_3
    //   37: invokevirtual 155	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   40: astore 7
    //   42: aload 7
    //   44: invokeinterface 161 1 0
    //   49: ifeq +57 -> 106
    //   52: aload 7
    //   54: invokeinterface 165 1 0
    //   59: checkcast 94	java/lang/Class
    //   62: astore 8
    //   64: aload 8
    //   66: aload_1
    //   67: invokevirtual 191	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   70: astore 11
    //   72: aload 11
    //   74: astore 10
    //   76: aload 10
    //   78: ifnull -36 -> 42
    //   81: aload 10
    //   83: invokevirtual 194	java/lang/reflect/Field:getModifiers	()I
    //   86: invokestatic 120	java/lang/reflect/Modifier:isStatic	(I)Z
    //   89: ifeq -47 -> 42
    //   92: aload 10
    //   94: iconst_1
    //   95: invokevirtual 195	java/lang/reflect/Field:setAccessible	(Z)V
    //   98: aload 10
    //   100: aconst_null
    //   101: aload_2
    //   102: invokevirtual 199	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   105: return
    //   106: new 63	java/lang/NoSuchFieldException
    //   109: dup
    //   110: new 65	java/lang/StringBuilder
    //   113: dup
    //   114: ldc 67
    //   116: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   119: aload_0
    //   120: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: ldc 80
    //   125: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_1
    //   129: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 201
    //   134: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_2
    //   138: invokestatic 205	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   141: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokespecial 206	java/lang/NoSuchFieldException:<init>	(Ljava/lang/String;)V
    //   150: athrow
    //   151: astore 4
    //   153: aload 4
    //   155: instanceof 63
    //   158: ifeq +6 -> 164
    //   161: aload 4
    //   163: athrow
    //   164: new 59	java/lang/Throwable
    //   167: dup
    //   168: new 65	java/lang/StringBuilder
    //   171: dup
    //   172: ldc 67
    //   174: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   177: aload_0
    //   178: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: ldc 80
    //   183: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: aload_1
    //   187: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: ldc 201
    //   192: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_2
    //   196: invokestatic 205	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   199: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: aload 4
    //   207: invokespecial 90	java/lang/Throwable:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   210: athrow
    //   211: astore 9
    //   213: aconst_null
    //   214: astore 10
    //   216: goto -140 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	151	java/lang/Throwable
    //   19	33	151	java/lang/Throwable
    //   36	42	151	java/lang/Throwable
    //   42	64	151	java/lang/Throwable
    //   81	105	151	java/lang/Throwable
    //   106	151	151	java/lang/Throwable
    //   64	72	211	java/lang/Throwable
  }

  private static boolean a(Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2)
  {
    if (paramArrayOfClass1.length == paramArrayOfClass2.length);
    for (int i = 0; i < paramArrayOfClass1.length; i++)
    {
      if (paramArrayOfClass2[i] == null)
        continue;
      Class<?> localClass1 = paramArrayOfClass1[i];
      Class<?> localClass2 = paramArrayOfClass2[i];
      if (((localClass1 == Byte.TYPE) && (localClass2 == Byte.class)) || ((localClass1 == Short.TYPE) && (localClass2 == Short.class)) || ((localClass1 == Character.TYPE) && (localClass2 == Character.class)) || ((localClass1 == Integer.TYPE) && (localClass2 == Integer.class)) || ((localClass1 == Long.TYPE) && (localClass2 == Long.class)) || ((localClass1 == Float.TYPE) && (localClass2 == Float.class)) || ((localClass1 == Double.TYPE) && (localClass2 == Double.class)) || ((localClass1 == Boolean.TYPE) && (localClass2 == Boolean.class)));
      for (int j = 1; (j == 0) && (!paramArrayOfClass1[i].isAssignableFrom(paramArrayOfClass2[i])); j = 0)
        return false;
    }
    return true;
  }

  private static Class<?>[] a(Object[] paramArrayOfObject)
  {
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    if (i < paramArrayOfObject.length)
    {
      if (paramArrayOfObject[i] == null);
      for (Class localClass = null; ; localClass = paramArrayOfObject[i].getClass())
      {
        arrayOfClass[i] = localClass;
        i++;
        break;
      }
    }
    return arrayOfClass;
  }

  // ERROR //
  private static Class<?> b(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 49	com/mob/tools/b/h:b	Ljava/util/HashMap;
    //   6: aload_0
    //   7: invokevirtual 244	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 94	java/lang/Class
    //   13: astore_2
    //   14: aload_2
    //   15: ifnonnull +73 -> 88
    //   18: getstatic 22	com/mob/tools/b/h:a	Ljava/util/HashSet;
    //   21: invokevirtual 245	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   24: astore_3
    //   25: aload_3
    //   26: invokeinterface 161 1 0
    //   31: ifeq +57 -> 88
    //   34: aload_3
    //   35: invokeinterface 165 1 0
    //   40: checkcast 172	java/lang/String
    //   43: astore 4
    //   45: aconst_null
    //   46: new 65	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   53: aload 4
    //   55: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc 247
    //   60: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_0
    //   64: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 209	com/mob/tools/b/h:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: getstatic 49	com/mob/tools/b/h:b	Ljava/util/HashMap;
    //   76: aload_0
    //   77: invokevirtual 244	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   80: checkcast 94	java/lang/Class
    //   83: astore_2
    //   84: aload_2
    //   85: ifnull -60 -> 25
    //   88: ldc 2
    //   90: monitorexit
    //   91: aload_2
    //   92: areturn
    //   93: astore_1
    //   94: ldc 2
    //   96: monitorexit
    //   97: aload_1
    //   98: athrow
    //   99: astore 5
    //   101: goto -28 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   3	14	93	finally
    //   18	25	93	finally
    //   25	45	93	finally
    //   45	73	93	finally
    //   73	84	93	finally
    //   45	73	99	java/lang/Throwable
  }

  private static <T> T b(Object paramObject, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (Class localClass1 = paramObject.getClass(); localClass1 != null; localClass1 = localClass1.getSuperclass())
      localArrayList.add(localClass1);
    Iterator localIterator = localArrayList.iterator();
    while (true)
      if (localIterator.hasNext())
      {
        Class localClass2 = (Class)localIterator.next();
        try
        {
          Field localField2 = localClass2.getDeclaredField(paramString);
          localField1 = localField2;
          if ((localField1 == null) || (Modifier.isStatic(localField1.getModifiers())))
            continue;
          localField1.setAccessible(true);
          return localField1.get(paramObject);
        }
        catch (Throwable localThrowable)
        {
          while (true)
            Field localField1 = null;
        }
      }
    throw new NoSuchFieldException("className: " + paramObject.getClass() + ", fieldName: " + paramString);
  }

  private static void b(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      if (paramString2.endsWith(".*"))
        a.add(paramString2.substring(0, -2 + paramString2.length()));
      while (true)
      {
        return;
        Class localClass = Class.forName(paramString2);
        String str = localClass.getSimpleName();
        b.put(str, localClass);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static <T> T c(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    for (Class localClass1 = b(paramString1); localClass1 != null; localClass1 = localClass1.getSuperclass())
      localArrayList.add(localClass1);
    Iterator localIterator = localArrayList.iterator();
    while (true)
      if (localIterator.hasNext())
      {
        Class localClass2 = (Class)localIterator.next();
        try
        {
          Field localField2 = localClass2.getDeclaredField(paramString2);
          localField1 = localField2;
          if ((localField1 == null) || (!Modifier.isStatic(localField1.getModifiers())))
            continue;
          localField1.setAccessible(true);
          return localField1.get(null);
        }
        catch (Throwable localThrowable)
        {
          while (true)
            Field localField1 = null;
        }
      }
    throw new NoSuchFieldException("className: " + paramString1 + ", fieldName: " + paramString2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.h
 * JD-Core Version:    0.6.0
 */