package android.support.v4.media;

import android.view.ViewTreeObserver.OnWindowFocusChangeListener;

class TransportMediatorJellybeanMR2$2
  implements ViewTreeObserver.OnWindowFocusChangeListener
{
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.this$0.gainFocus();
      return;
    }
    this.this$0.loseFocus();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2.2
 * JD-Core Version:    0.6.0
 */