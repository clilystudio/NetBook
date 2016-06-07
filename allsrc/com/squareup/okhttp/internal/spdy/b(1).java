package com.squareup.okhttp.internal.spdy;

import java.util.List;
import okio.ByteString;
import okio.i;

public abstract interface b
{
  public abstract void a(int paramInt, long paramLong);

  public abstract void a(int paramInt, ErrorCode paramErrorCode);

  public abstract void a(int paramInt, List<d> paramList);

  public abstract void a(int paramInt, ByteString paramByteString);

  public abstract void a(boolean paramBoolean, int paramInt1, int paramInt2);

  public abstract void a(boolean paramBoolean, int paramInt1, i parami, int paramInt2);

  public abstract void a(boolean paramBoolean, w paramw);

  public abstract void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, List<d> paramList, HeadersMode paramHeadersMode);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.b
 * JD-Core Version:    0.6.0
 */