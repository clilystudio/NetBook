package com.google.gson.internal;

import java.lang.reflect.Type;

class ConstructorConstructor$12
  implements ObjectConstructor<T>
{
  private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();

  public T construct()
  {
    try
    {
      Object localObject = this.unsafeAllocator.newInstance(this.val$rawType);
      return localObject;
    }
    catch (Exception localException)
    {
    }
    throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". Register an InstanceCreator with Gson for this type may fix this problem.", localException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor.12
 * JD-Core Version:    0.6.0
 */