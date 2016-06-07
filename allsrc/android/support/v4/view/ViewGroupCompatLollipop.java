package android.support.v4.view;

import android.view.ViewGroup;

class ViewGroupCompatLollipop
{
  public static int getNestedScrollAxes(ViewGroup paramViewGroup)
  {
    return paramViewGroup.getNestedScrollAxes();
  }

  public static boolean isTransitionGroup(ViewGroup paramViewGroup)
  {
    return paramViewGroup.isTransitionGroup();
  }

  public static void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    paramViewGroup.setTransitionGroup(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewGroupCompatLollipop
 * JD-Core Version:    0.6.0
 */