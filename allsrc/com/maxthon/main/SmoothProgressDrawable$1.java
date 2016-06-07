package com.maxthon.main;

import android.os.SystemClock;

class SmoothProgressDrawable$1
  implements Runnable
{
  public void run()
  {
    SmoothProgressDrawable localSmoothProgressDrawable1 = this.this$0;
    SmoothProgressDrawable.access$2(localSmoothProgressDrawable1, SmoothProgressDrawable.access$0(localSmoothProgressDrawable1) + 0.01F * SmoothProgressDrawable.access$1(this.this$0));
    if (SmoothProgressDrawable.access$0(this.this$0) >= SmoothProgressDrawable.access$3(this.this$0))
    {
      SmoothProgressDrawable.access$4(this.this$0, true);
      SmoothProgressDrawable localSmoothProgressDrawable2 = this.this$0;
      SmoothProgressDrawable.access$2(localSmoothProgressDrawable2, SmoothProgressDrawable.access$0(localSmoothProgressDrawable2) - SmoothProgressDrawable.access$3(this.this$0));
    }
    this.this$0.scheduleSelf(SmoothProgressDrawable.access$5(this.this$0), 16L + SystemClock.uptimeMillis());
    this.this$0.invalidateSelf();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.SmoothProgressDrawable.1
 * JD-Core Version:    0.6.0
 */