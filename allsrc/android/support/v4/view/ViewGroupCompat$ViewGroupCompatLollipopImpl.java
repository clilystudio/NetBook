package android.support.v4.view;

import android.view.ViewGroup;

class ViewGroupCompat$ViewGroupCompatLollipopImpl extends ViewGroupCompat.ViewGroupCompatJellybeanMR2Impl
{
  public int getNestedScrollAxes(ViewGroup paramViewGroup)
  {
    return ViewGroupCompatLollipop.getNestedScrollAxes(paramViewGroup);
  }

  public boolean isTransitionGroup(ViewGroup paramViewGroup)
  {
    return ViewGroupCompatLollipop.isTransitionGroup(paramViewGroup);
  }

  public void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    ViewGroupCompatLollipop.setTransitionGroup(paramViewGroup, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewGroupCompat.ViewGroupCompatLollipopImpl
 * JD-Core Version:    0.6.0
 */