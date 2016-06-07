package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;

class ReflectiveTypeAdapterFactory$1 extends ReflectiveTypeAdapterFactory.BoundField
{
  final TypeAdapter<?> typeAdapter = this.val$context.getAdapter(this.val$fieldType);

  void read(JsonReader paramJsonReader, Object paramObject)
  {
    Object localObject = this.typeAdapter.read(paramJsonReader);
    if ((localObject != null) || (!this.val$isPrimitive))
      this.val$field.set(paramObject, localObject);
  }

  void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    Object localObject = this.val$field.get(paramObject);
    new TypeAdapterRuntimeTypeWrapper(this.val$context, this.typeAdapter, this.val$fieldType.getType()).write(paramJsonWriter, localObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
 * JD-Core Version:    0.6.0
 */