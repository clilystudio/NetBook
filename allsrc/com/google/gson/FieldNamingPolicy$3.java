package com.google.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$3
{
  public final String translateName(Field paramField)
  {
    return FieldNamingPolicy.access$100(FieldNamingPolicy.access$200(paramField.getName(), " "));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy.3
 * JD-Core Version:    0.6.0
 */