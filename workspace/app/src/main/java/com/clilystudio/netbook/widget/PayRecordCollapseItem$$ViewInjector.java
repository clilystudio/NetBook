package com.clilystudio.netbook.widget;

import android.widget.LinearLayout;
import butterknife.ButterKnife.Finder;

public class PayRecordCollapseItem$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, PayRecordCollapseItem paramPayRecordCollapseItem, Object paramObject)
  {
    paramPayRecordCollapseItem.mItemContainer = ((LinearLayout)paramFinder.findRequiredView(paramObject, 2131493578, "field 'mItemContainer'"));
  }

  public static void reset(PayRecordCollapseItem paramPayRecordCollapseItem)
  {
    paramPayRecordCollapseItem.mItemContainer = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.PayRecordCollapseItem..ViewInjector
 * JD-Core Version:    0.6.0
 */