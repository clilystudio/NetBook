package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.Locale;
import java.util.StringTokenizer;

final class TypeAdapters$24 extends TypeAdapter<Locale>
{
  public final Locale read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    StringTokenizer localStringTokenizer = new StringTokenizer(paramJsonReader.nextString(), "_");
    if (localStringTokenizer.hasMoreElements());
    for (String str1 = localStringTokenizer.nextToken(); ; str1 = null)
    {
      if (localStringTokenizer.hasMoreElements());
      for (String str2 = localStringTokenizer.nextToken(); ; str2 = null)
      {
        if (localStringTokenizer.hasMoreElements());
        for (String str3 = localStringTokenizer.nextToken(); ; str3 = null)
        {
          if ((str2 == null) && (str3 == null))
            return new Locale(str1);
          if (str3 == null)
            return new Locale(str1, str2);
          return new Locale(str1, str2, str3);
        }
      }
    }
  }

  public final void write(JsonWriter paramJsonWriter, Locale paramLocale)
  {
    if (paramLocale == null);
    for (String str = null; ; str = paramLocale.toString())
    {
      paramJsonWriter.value(str);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.24
 * JD-Core Version:    0.6.0
 */