package com.activeandroid.util;

import java.lang.reflect.Field;
import java.util.Comparator;

final class ReflectionUtils$1
  implements Comparator<Field>
{
  public final int compare(Field paramField1, Field paramField2)
  {
    return paramField2.getName().compareTo(paramField1.getName());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.ReflectionUtils.1
 * JD-Core Version:    0.6.0
 */