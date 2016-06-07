package android.support.design.widget;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import java.lang.ref.WeakReference;

public class TabLayout$TabLayoutOnPageChangeListener
  implements ViewPager.OnPageChangeListener
{
  private final WeakReference<TabLayout> a;
  private int b;
  private int c;

  public TabLayout$TabLayoutOnPageChangeListener(TabLayout paramTabLayout)
  {
    this.a = new WeakReference(paramTabLayout);
  }

  public void onPageScrollStateChanged(int paramInt)
  {
    this.b = this.c;
    this.c = paramInt;
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    int i = 1;
    TabLayout localTabLayout = (TabLayout)this.a.get();
    if (localTabLayout != null)
      if ((this.c != i) && ((this.c != 2) || (this.b != i)))
        break label56;
    while (true)
    {
      localTabLayout.setScrollPosition(paramInt1, paramFloat, i);
      return;
      label56: int j = 0;
    }
  }

  public void onPageSelected(int paramInt)
  {
    TabLayout localTabLayout = (TabLayout)this.a.get();
    am localam;
    if (localTabLayout != null)
    {
      localam = localTabLayout.a(paramInt);
      if (this.c != 0)
        break label39;
    }
    label39: for (boolean bool = true; ; bool = false)
    {
      localTabLayout.a(localam, bool);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.TabLayout.TabLayoutOnPageChangeListener
 * JD-Core Version:    0.6.0
 */