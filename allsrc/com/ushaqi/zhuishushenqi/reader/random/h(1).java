package com.ushaqi.zhuishushenqi.reader.random;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.ushaqi.zhuishushenqi.reader.o;

final class h extends PagerAdapter
{
  h(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }

  public final int getCount()
  {
    return 3;
  }

  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    o localo = ReaderRandomActivity.i(this.a)[paramInt];
    paramViewGroup.addView(localo.i());
    return localo.i();
  }

  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.h
 * JD-Core Version:    0.6.0
 */