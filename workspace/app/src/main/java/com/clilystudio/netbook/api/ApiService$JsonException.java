package com.clilystudio.netbook.api;

import com.google.gson.JsonParseException;
import java.io.IOException;

class ApiService$JsonException extends IOException
{
  private static final long serialVersionUID = -8247637549733902252L;

  public ApiService$JsonException(JsonParseException paramJsonParseException)
  {
    super(paramJsonParseException.getMessage());
    initCause(paramJsonParseException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.api.ApiService.JsonException
 * JD-Core Version:    0.6.0
 */