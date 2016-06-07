package com.androidquery;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Paint;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.androidquery.a.a;
import com.androidquery.b.d;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;

public abstract class b<T extends b<T>>
{
  private static WeakHashMap<Dialog, Void> g;
  private Context a;
  private View b;
  private Object c;
  private a d;
  private int e = 0;
  private HttpHost f;

  static
  {
    new Class[] { View.class };
    Class[] arrayOfClass1 = new Class[4];
    arrayOfClass1[0] = AdapterView.class;
    arrayOfClass1[1] = View.class;
    arrayOfClass1[2] = Integer.TYPE;
    arrayOfClass1[3] = Long.TYPE;
    Class[] arrayOfClass2 = new Class[2];
    arrayOfClass2[0] = AbsListView.class;
    arrayOfClass2[1] = Integer.TYPE;
    Class[] arrayOfClass3 = new Class[4];
    arrayOfClass3[0] = CharSequence.class;
    arrayOfClass3[1] = Integer.TYPE;
    arrayOfClass3[2] = Integer.TYPE;
    arrayOfClass3[3] = Integer.TYPE;
    Class[] arrayOfClass4 = new Class[2];
    arrayOfClass4[0] = Integer.TYPE;
    arrayOfClass4[1] = Integer.TYPE;
    new Class[1][0] = Integer.TYPE;
    Class[] arrayOfClass5 = new Class[2];
    arrayOfClass5[0] = Integer.TYPE;
    arrayOfClass5[1] = Paint.class;
    g = new WeakHashMap();
  }

  public b(Context paramContext)
  {
    this.a = paramContext;
  }

  private void a()
  {
    this.d = null;
    this.c = null;
    this.e = 0;
    this.f = null;
  }

  public final T a(Dialog paramDialog)
  {
    if (paramDialog != null);
    try
    {
      paramDialog.show();
      g.put(paramDialog, null);
      return this;
    }
    catch (Exception localException)
    {
    }
    return this;
  }

  public final T a(View paramView)
  {
    this.b = paramView;
    a();
    return this;
  }

  public final T a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.b instanceof ImageView))
    {
      d.a(null, this.a, (ImageView)this.b, paramString, false, true, 0, 0, null, 0, 0.0F, 3.4028235E+38F, null, null, 0, 0, null, null);
      a();
    }
    return this;
  }

  public final T b(Dialog paramDialog)
  {
    if (paramDialog != null);
    try
    {
      g.remove(paramDialog);
      paramDialog.dismiss();
      return this;
    }
    catch (Exception localException)
    {
    }
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.b
 * JD-Core Version:    0.6.0
 */