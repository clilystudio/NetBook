package com.androidquery.util;

import android.app.Activity;
import android.app.ProgressDialog;
import android.view.View;
import android.widget.ProgressBar;
import com.androidquery.a;

public final class d
  implements Runnable
{
  private ProgressBar a;
  private ProgressDialog b;
  private Activity c;
  private View d;
  private boolean e;
  private int f;
  private int g;

  public d(Object paramObject)
  {
    if ((paramObject instanceof ProgressBar))
      this.a = ((ProgressBar)paramObject);
    do
    {
      return;
      if ((paramObject instanceof ProgressDialog))
      {
        this.b = ((ProgressDialog)paramObject);
        return;
      }
      if (!(paramObject instanceof Activity))
        continue;
      this.c = ((Activity)paramObject);
      return;
    }
    while (!(paramObject instanceof View));
    this.d = ((View)paramObject);
  }

  public final void a()
  {
    if (this.a != null)
    {
      this.a.setProgress(0);
      this.a.setMax(10000);
    }
    if (this.b != null)
    {
      this.b.setProgress(0);
      this.b.setMax(10000);
    }
    if (this.c != null)
      this.c.setProgress(0);
    this.e = false;
    this.g = 0;
    this.f = 10000;
  }

  public final void a(int paramInt)
  {
    if (paramInt <= 0)
    {
      this.e = true;
      paramInt = 10000;
    }
    this.f = paramInt;
    if (this.a != null)
    {
      this.a.setProgress(0);
      this.a.setMax(paramInt);
    }
    if (this.b != null)
    {
      this.b.setProgress(0);
      this.b.setMax(paramInt);
    }
  }

  public final void b()
  {
    if (this.a != null)
      this.a.setProgress(this.a.getMax());
    if (this.b != null)
      this.b.setProgress(this.b.getMax());
    if (this.c != null)
      this.c.setProgress(9999);
  }

  public final void b(int paramInt)
  {
    int i = 1;
    int k;
    label52: int j;
    if (this.a != null)
    {
      ProgressBar localProgressBar = this.a;
      if (this.e)
      {
        k = i;
        localProgressBar.incrementProgressBy(k);
      }
    }
    else
    {
      if (this.b != null)
      {
        ProgressDialog localProgressDialog = this.b;
        if (!this.e)
          break label110;
        localProgressDialog.incrementProgressBy(i);
      }
      if (this.c != null)
      {
        if (!this.e)
          break label115;
        j = this.g;
        this.g = (j + 1);
      }
    }
    while (true)
    {
      if (j > 9999)
        j = 9999;
      this.c.setProgress(j);
      return;
      k = paramInt;
      break;
      label110: i = paramInt;
      break label52;
      label115: this.g = (paramInt + this.g);
      j = 10000 * this.g / this.f;
    }
  }

  public final void run()
  {
    if (this.b != null)
      new a(this.b.getContext()).b(this.b);
    if (this.c != null)
    {
      this.c.setProgressBarIndeterminateVisibility(false);
      this.c.setProgressBarVisibility(false);
    }
    if (this.a != null)
    {
      this.a.setTag(1090453505, null);
      this.a.setVisibility(0);
    }
    Object localObject1 = this.a;
    if (localObject1 == null)
      localObject1 = this.d;
    if (localObject1 != null)
    {
      Object localObject2 = ((View)localObject1).getTag(1090453505);
      if ((localObject2 == null) || (localObject2.equals(null)))
      {
        ((View)localObject1).setTag(1090453505, null);
        if ((this.a != null) && (this.a.isIndeterminate()))
          ((View)localObject1).setVisibility(8);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.d
 * JD-Core Version:    0.6.0
 */