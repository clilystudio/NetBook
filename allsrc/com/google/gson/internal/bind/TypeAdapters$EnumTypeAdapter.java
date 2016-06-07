package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

final class TypeAdapters$EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T>
{
  private final Map<T, String> constantToName = new HashMap();
  private final Map<String, T> nameToConstant = new HashMap();

  public TypeAdapters$EnumTypeAdapter(Class<T> paramClass)
  {
    while (true)
    {
      String str1;
      try
      {
        Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
        int i = arrayOfEnum.length;
        int j = 0;
        if (j < i)
        {
          Enum localEnum = arrayOfEnum[j];
          str1 = localEnum.name();
          SerializedName localSerializedName = (SerializedName)paramClass.getField(str1).getAnnotation(SerializedName.class);
          if (localSerializedName == null)
            break label135;
          str2 = localSerializedName.value();
          this.nameToConstant.put(str2, localEnum);
          this.constantToName.put(localEnum, str2);
          j++;
          continue;
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        throw new AssertionError();
      }
      return;
      label135: String str2 = str1;
    }
  }

  public final T read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return (Enum)this.nameToConstant.get(paramJsonReader.nextString());
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null);
    for (String str = null; ; str = (String)this.constantToName.get(paramT))
    {
      paramJsonWriter.value(str);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.EnumTypeAdapter
 * JD-Core Version:    0.6.0
 */