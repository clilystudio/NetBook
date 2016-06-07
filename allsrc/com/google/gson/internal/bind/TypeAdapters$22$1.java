package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$22$1 extends TypeAdapter<Timestamp>
{
  public Timestamp read(JsonReader paramJsonReader)
  {
    Date localDate = (Date)this.val$dateTypeAdapter.read(paramJsonReader);
    if (localDate != null)
      return new Timestamp(localDate.getTime());
    return null;
  }

  public void write(JsonWriter paramJsonWriter, Timestamp paramTimestamp)
  {
    this.val$dateTypeAdapter.write(paramJsonWriter, paramTimestamp);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.22.1
 * JD-Core Version:    0.6.0
 */