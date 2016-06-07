package com.alipay.b.c;

import android.support.design.widget.am;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class a
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;

  public a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramString7;
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()));
    localStringBuffer.append("," + this.a);
    localStringBuffer.append("," + this.b);
    localStringBuffer.append("," + this.c);
    localStringBuffer.append("," + this.d);
    if ((am.a(this.e)) || (this.e.length() < 20))
    {
      localStringBuffer.append("," + this.e);
      if ((!am.a(this.f)) && (this.f.length() >= 20))
        break label298;
      localStringBuffer.append("," + this.f);
      label214: if ((!am.a(this.g)) && (this.g.length() >= 20))
        break label331;
      localStringBuffer.append("," + this.g);
    }
    while (true)
    {
      return localStringBuffer.toString();
      localStringBuffer.append("," + this.e.substring(0, 20));
      break;
      label298: localStringBuffer.append("," + this.f.substring(0, 20));
      break label214;
      label331: localStringBuffer.append("," + this.g.substring(0, 20));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.c.a
 * JD-Core Version:    0.6.0
 */