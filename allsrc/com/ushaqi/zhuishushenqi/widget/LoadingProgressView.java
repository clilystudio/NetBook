package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.c.a.D;
import com.c.a.a;
import com.c.a.d;
import com.c.a.w;

public class LoadingProgressView extends ProgressView
{
  private boolean a = true;
  private float b;
  private d c;
  private D d = new ae(this);
  private D e = new ag(this);

  public LoadingProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a()
  {
    if (getVisibility() != 0)
      setVisibility(0);
    this.a = false;
    if ((this.c != null) && (this.c.d()))
      this.c.c();
    w localw1 = w.a(new float[] { 0.0F, 60.0F });
    localw1.a(5000L);
    w localw2 = w.a(new float[] { 60.0F, 80.0F });
    localw2.a(5000L);
    w localw3 = w.a(new float[] { 80.0F, 90.0F });
    localw3.a(5000L);
    localw1.a(this.d);
    localw2.a(this.d);
    localw3.a(this.d);
    this.c = new d();
    this.c.a(new a[] { localw1, localw2, localw3 });
    this.c.a();
  }

  public final void a(ah paramah)
  {
    this.a = true;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.b;
    arrayOfFloat[1] = 100.0F;
    w localw = w.a(arrayOfFloat);
    localw.a(300L);
    localw.a(this.e);
    localw.a(new af(this, paramah));
    localw.a();
  }

  public final boolean b()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.LoadingProgressView
 * JD-Core Version:    0.6.0
 */