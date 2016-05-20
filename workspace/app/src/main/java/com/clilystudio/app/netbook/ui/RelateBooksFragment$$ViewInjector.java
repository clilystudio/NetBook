package com.clilystudio.app.netbook.ui;

import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class RelateBooksFragment$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, RelateBooksFragment paramRelateBooksFragment, Object paramObject)
  {
    paramRelateBooksFragment.mBookContainer = ((LinearLayout)paramFinder.findRequiredView(paramObject, 2131493463, "field 'mBookContainer'"));
    paramRelateBooksFragment.mRelateBookRoot = ((LinearLayout)paramFinder.findRequiredView(paramObject, 2131493462, "field 'mRelateBookRoot'"));
    paramRelateBooksFragment.mMore = ((TextView)paramFinder.findRequiredView(paramObject, 2131493432, "field 'mMore'"));
  }

  public static void reset(RelateBooksFragment paramRelateBooksFragment)
  {
    paramRelateBooksFragment.mBookContainer = null;
    paramRelateBooksFragment.mRelateBookRoot = null;
    paramRelateBooksFragment.mMore = null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.RelateBooksFragment..ViewInjector
 * JD-Core Version:    0.6.2
 */