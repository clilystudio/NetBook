package m.framework.ui.widget.viewpager;

import android.view.View;
import android.view.ViewGroup;

public abstract class ViewPagerAdapter
{
  public abstract int getCount();

  public abstract View getView(int paramInt, ViewGroup paramViewGroup);

  public void onScreenChange(int paramInt1, int paramInt2)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.viewpager.ViewPagerAdapter
 * JD-Core Version:    0.6.0
 */