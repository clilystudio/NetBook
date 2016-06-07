package com.ushaqi.zhuishushenqi.widget;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class MenuGameTitle$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, MenuGameTitle paramMenuGameTitle, Object paramObject)
  {
    paramMenuGameTitle.mSlmReaderAppName = ((TextView)paramFinder.findRequiredView(paramObject, 2131493870, "field 'mSlmReaderAppName'"));
    paramMenuGameTitle.mSlmReaderAppSize = ((TextView)paramFinder.findRequiredView(paramObject, 2131493871, "field 'mSlmReaderAppSize'"));
  }

  public static void reset(MenuGameTitle paramMenuGameTitle)
  {
    paramMenuGameTitle.mSlmReaderAppName = null;
    paramMenuGameTitle.mSlmReaderAppSize = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.MenuGameTitle..ViewInjector
 * JD-Core Version:    0.6.0
 */