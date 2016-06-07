package com.google.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$1 extends UnsafeAllocator
{
  public final <T> T newInstance(Class<T> paramClass)
  {
    return this.val$allocateInstance.invoke(this.val$unsafe, new Object[] { paramClass });
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator.1
 * JD-Core Version:    0.6.0
 */