package com.clilystudio.netbook.api;

import com.clilystudio.netbook.db.DnsCacheRecord;

public final class c
{
  private static c a;

  public static c a()
  {
    if (a == null)
      a = new c();
    return a;
  }

  public final void a(d paramd, String paramString)
  {
    monitorenter;
    try
    {
      DnsCacheRecord localDnsCacheRecord = new DnsCacheRecord();
      localDnsCacheRecord.setExpiredTime(paramd.b());
      localDnsCacheRecord.setHost(paramString);
      localDnsCacheRecord.setIp(paramd.a());
      localDnsCacheRecord.save();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.api.c
 * JD-Core Version:    0.6.0
 */