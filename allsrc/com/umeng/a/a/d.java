package com.umeng.a.a;

import android.content.Context;
import android.support.design.widget.am;
import com.umeng.a.a;
import com.umeng.a.i;
import org.json.JSONObject;
import u.aly.bt;
import u.aly.bu;

public final class d extends bu
  implements Runnable
{
  private Context a;

  public d(b paramb, Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  public final void run()
  {
    if ((!a.i) || (am.e(this.a)))
      while (true)
      {
        int i;
        try
        {
          JSONObject localJSONObject = b.a(this.b, this.a);
          c localc = new c(this.b, localJSONObject);
          String[] arrayOfString = i.b;
          e locale = null;
          i = 0;
          break label208;
          if (locale != null)
            continue;
          b.a(this.b, null);
          return;
          localc.a(arrayOfString[i]);
          locale = (e)a(localc, e.class);
          if (locale != null)
            continue;
          i++;
          break label208;
          if (locale.b)
          {
            if (b.a(this.b) == null)
              continue;
            b.a(this.b).a(locale.c, locale.d);
            b.a(this.b, this.a, locale);
            b.b(this.b, this.a, locale);
            b.a(this.b, locale.a);
            return;
          }
        }
        catch (Exception localException)
        {
          b.a(this.b, null);
          bt.c("MobclickAgent", "reques update error", localException);
          return;
        }
        b.a(this.b, null);
        return;
        label208: if (i < 2)
          continue;
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.d
 * JD-Core Version:    0.6.0
 */