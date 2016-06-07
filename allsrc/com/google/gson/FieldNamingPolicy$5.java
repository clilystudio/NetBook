package com.google.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$5
{
  public final String translateName(Field paramField)
  {
    return FieldNamingPolicy.access$200(paramField.getName(), "-").toLowerCase();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy.5
 * JD-Core Version:    0.6.0
 */