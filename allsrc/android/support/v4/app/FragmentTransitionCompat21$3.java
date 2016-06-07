package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

final class FragmentTransitionCompat21$3 extends Transition.EpicenterCallback
{
  private Rect mEpicenter;

  public final Rect onGetEpicenter(Transition paramTransition)
  {
    if ((this.mEpicenter == null) && (this.val$epicenterView.epicenter != null))
      this.mEpicenter = FragmentTransitionCompat21.access$100(this.val$epicenterView.epicenter);
    return this.mEpicenter;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentTransitionCompat21.3
 * JD-Core Version:    0.6.0
 */