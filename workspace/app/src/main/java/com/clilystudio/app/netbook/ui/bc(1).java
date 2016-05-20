package com.clilystudio.app.netbook.ui;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

final class bc extends PagerAdapter
{
  bc(IntroActivity paramIntroActivity)
  {
  }

  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)IntroActivity.a(this.a).get(paramInt));
  }

  public final int getCount()
  {
    return IntroActivity.a(this.a).size();
  }

  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.addView((View)IntroActivity.a(this.a).get(paramInt), 0);
    return IntroActivity.a(this.a).get(paramInt);
  }

  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bc
 * JD-Core Version:    0.6.2
 */