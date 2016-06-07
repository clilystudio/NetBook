package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

class ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter
  implements Runnable
{
  WeakReference<View> mViewRef;
  ViewPropertyAnimatorCompat mVpa;

  private ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter(ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl paramBaseViewPropertyAnimatorCompatImpl, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    this.mViewRef = new WeakReference(paramView);
    this.mVpa = paramViewPropertyAnimatorCompat;
  }

  public void run()
  {
    View localView = (View)this.mViewRef.get();
    if (localView != null)
      ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl.access$200(this.this$0, this.mVpa, localView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl.Starter
 * JD-Core Version:    0.6.0
 */