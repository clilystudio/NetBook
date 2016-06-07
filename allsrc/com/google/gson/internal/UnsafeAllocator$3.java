package com.google.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$3 extends UnsafeAllocator
{
  public final <T> T newInstance(Class<T> paramClass)
  {
    Method localMethod = this.val$newInstance;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramClass;
    arrayOfObject[1] = Integer.valueOf(this.val$constructorId);
    return localMethod.invoke(null, arrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator.3
 * JD-Core Version:    0.6.0
 */