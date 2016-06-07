package com.github.kevinsawicki.http;

import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public final class f extends BufferedOutputStream
{
  private final CharsetEncoder a;

  public f(OutputStream paramOutputStream, String paramString, int paramInt)
  {
    super(paramOutputStream, paramInt);
    this.a = Charset.forName(HttpRequest.c(paramString)).newEncoder();
  }

  public final f a(String paramString)
  {
    ByteBuffer localByteBuffer = this.a.encode(CharBuffer.wrap(paramString));
    super.write(localByteBuffer.array(), 0, localByteBuffer.limit());
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.github.kevinsawicki.http.f
 * JD-Core Version:    0.6.0
 */