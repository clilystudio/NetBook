package com.ushaqi.zhuishushenqi.widget;

import android.widget.TableLayout;
import butterknife.ButterKnife.Finder;

public class GameItemSection$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, GameItemSection paramGameItemSection, Object paramObject)
  {
    paramGameItemSection.mContainer = ((TableLayout)paramFinder.findRequiredView(paramObject, 2131493577, "field 'mContainer'"));
  }

  public static void reset(GameItemSection paramGameItemSection)
  {
    paramGameItemSection.mContainer = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameItemSection..ViewInjector
 * JD-Core Version:    0.6.0
 */