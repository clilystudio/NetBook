package org.apache.commons.lang3;

public final class a
{
  public static final Object[] a = new Object[0];
  public static final Class<?>[] b = new Class[0];

  public static boolean a(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    return ((paramArrayOfObject1 != null) || (paramArrayOfObject2 == null) || (paramArrayOfObject2.length <= 0)) && ((paramArrayOfObject2 != null) || (paramArrayOfObject1 == null) || (paramArrayOfObject1.length <= 0)) && ((paramArrayOfObject1 == null) || (paramArrayOfObject2 == null) || (paramArrayOfObject1.length == paramArrayOfObject2.length));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.a
 * JD-Core Version:    0.6.0
 */