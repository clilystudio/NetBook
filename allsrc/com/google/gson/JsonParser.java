package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class JsonParser
{
  // ERROR //
  public final JsonElement parse(JsonReader paramJsonReader)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 20	com/google/gson/stream/JsonReader:isLenient	()Z
    //   4: istore_2
    //   5: aload_1
    //   6: iconst_1
    //   7: invokevirtual 24	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   10: aload_1
    //   11: invokestatic 28	com/google/gson/internal/Streams:parse	(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    //   14: astore 6
    //   16: aload_1
    //   17: iload_2
    //   18: invokevirtual 24	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   21: aload 6
    //   23: areturn
    //   24: astore 5
    //   26: new 30	com/google/gson/JsonParseException
    //   29: dup
    //   30: new 32	java/lang/StringBuilder
    //   33: dup
    //   34: ldc 34
    //   36: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_1
    //   40: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   43: ldc 43
    //   45: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 50	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: aload 5
    //   53: invokespecial 53	com/google/gson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   56: athrow
    //   57: astore 4
    //   59: aload_1
    //   60: iload_2
    //   61: invokevirtual 24	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   64: aload 4
    //   66: athrow
    //   67: astore_3
    //   68: new 30	com/google/gson/JsonParseException
    //   71: dup
    //   72: new 32	java/lang/StringBuilder
    //   75: dup
    //   76: ldc 34
    //   78: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_1
    //   82: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   85: ldc 43
    //   87: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 50	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: aload_3
    //   94: invokespecial 53	com/google/gson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   97: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   10	16	24	java/lang/StackOverflowError
    //   10	16	57	finally
    //   26	57	57	finally
    //   68	98	57	finally
    //   10	16	67	java/lang/OutOfMemoryError
  }

  public final JsonElement parse(Reader paramReader)
  {
    JsonElement localJsonElement;
    try
    {
      JsonReader localJsonReader = new JsonReader(paramReader);
      localJsonElement = parse(localJsonReader);
      if ((!localJsonElement.isJsonNull()) && (localJsonReader.peek() != JsonToken.END_DOCUMENT))
        throw new JsonSyntaxException("Did not consume the entire document.");
    }
    catch (MalformedJsonException localMalformedJsonException)
    {
      throw new JsonSyntaxException(localMalformedJsonException);
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new JsonSyntaxException(localNumberFormatException);
    }
    return localJsonElement;
  }

  public final JsonElement parse(String paramString)
  {
    return parse(new StringReader(paramString));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.JsonParser
 * JD-Core Version:    0.6.0
 */