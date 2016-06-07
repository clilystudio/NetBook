package com.activeandroid.serializer;

import java.io.File;

public final class FileSerializer extends TypeSerializer
{
  public final File deserialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return new File((String)paramObject);
  }

  public final Class<?> getDeserializedType()
  {
    return File.class;
  }

  public final Class<?> getSerializedType()
  {
    return String.class;
  }

  public final String serialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return ((File)paramObject).toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.serializer.FileSerializer
 * JD-Core Version:    0.6.0
 */