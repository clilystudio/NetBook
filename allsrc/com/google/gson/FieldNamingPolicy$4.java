package com.google.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$4
{
  public final String translateName(Field paramField)
  {
    return FieldNamingPolicy.access$200(paramField.getName(), "_").toLowerCase();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy.4
 * JD-Core Version:    0.6.0
 */