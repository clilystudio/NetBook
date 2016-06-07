package com.squareup.okhttp.internal.spdy;

import java.io.Closeable;
import java.util.List;
import okio.f;

public abstract interface c extends Closeable
{
  public abstract void a();

  public abstract void a(int paramInt, long paramLong);

  public abstract void a(int paramInt, ErrorCode paramErrorCode);

  public abstract void a(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte);

  public abstract void a(w paramw);

  public abstract void a(boolean paramBoolean, int paramInt1, int paramInt2);

  public abstract void a(boolean paramBoolean, int paramInt1, f paramf, int paramInt2);

  public abstract void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<d> paramList);

  public abstract void b();

  public abstract void b(w paramw);

  public abstract int c();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.c
 * JD-Core Version:    0.6.0
 */