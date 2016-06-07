package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class i
{
  private int a;
  private String b;
  private String c;
  private String d;
  private String e;
  private List<a> f = null;

  public i(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<a> paramList)
  {
    this.a = paramInt;
    this.b = paramString1;
    this.d = paramString2;
    this.c = paramString3;
    this.e = paramString4;
    this.f = paramList;
  }

  public i(Bundle paramBundle)
  {
    this.a = paramBundle.getInt("ext_err_code");
    if (paramBundle.containsKey("ext_err_type"))
      this.b = paramBundle.getString("ext_err_type");
    this.c = paramBundle.getString("ext_err_cond");
    this.d = paramBundle.getString("ext_err_reason");
    this.e = paramBundle.getString("ext_err_msg");
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("ext_exts");
    if (arrayOfParcelable != null)
    {
      this.f = new ArrayList(arrayOfParcelable.length);
      int i = arrayOfParcelable.length;
      for (int j = 0; j < i; j++)
      {
        a locala = a.a((Bundle)arrayOfParcelable[j]);
        this.f.add(locala);
      }
    }
  }

  public i(j paramj)
  {
    a(paramj);
    this.e = null;
  }

  public i(j paramj, String paramString)
  {
    a(paramj);
    this.e = paramString;
  }

  private void a(j paramj)
  {
    this.c = j.a(paramj);
  }

  private List<a> e()
  {
    monitorenter;
    try
    {
      List localList2;
      if (this.f == null)
        localList2 = Collections.emptyList();
      List localList1;
      for (Object localObject2 = localList2; ; localObject2 = localList1)
      {
        return localObject2;
        localList1 = Collections.unmodifiableList(this.f);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final String a()
  {
    return this.d;
  }

  public final String b()
  {
    return this.b;
  }

  public final Bundle c()
  {
    Bundle localBundle1 = new Bundle();
    if (this.b != null)
      localBundle1.putString("ext_err_type", this.b);
    localBundle1.putInt("ext_err_code", this.a);
    if (this.d != null)
      localBundle1.putString("ext_err_reason", this.d);
    if (this.c != null)
      localBundle1.putString("ext_err_cond", this.c);
    if (this.e != null)
      localBundle1.putString("ext_err_msg", this.e);
    if (this.f != null)
    {
      Bundle[] arrayOfBundle = new Bundle[this.f.size()];
      Iterator localIterator = this.f.iterator();
      int j;
      for (int i = 0; localIterator.hasNext(); i = j)
      {
        Bundle localBundle2 = ((a)localIterator.next()).d();
        j = i + 1;
        arrayOfBundle[i] = localBundle2;
      }
      localBundle1.putParcelableArray("ext_exts", arrayOfBundle);
    }
    return localBundle1;
  }

  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<error code=\"").append(this.a).append("\"");
    if (this.b != null)
    {
      localStringBuilder.append(" type=\"");
      localStringBuilder.append(this.b);
      localStringBuilder.append("\"");
    }
    if (this.d != null)
    {
      localStringBuilder.append(" reason=\"");
      localStringBuilder.append(this.d);
      localStringBuilder.append("\"");
    }
    localStringBuilder.append(">");
    if (this.c != null)
    {
      localStringBuilder.append("<").append(this.c);
      localStringBuilder.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
    }
    if (this.e != null)
    {
      localStringBuilder.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
      localStringBuilder.append(this.e);
      localStringBuilder.append("</text>");
    }
    Iterator localIterator = e().iterator();
    while (localIterator.hasNext())
      localStringBuilder.append(((a)localIterator.next()).c());
    localStringBuilder.append("</error>");
    return localStringBuilder.toString();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.c != null)
      localStringBuilder.append(this.c);
    localStringBuilder.append("(").append(this.a).append(")");
    if (this.e != null)
      localStringBuilder.append(" ").append(this.e);
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.i
 * JD-Core Version:    0.6.0
 */