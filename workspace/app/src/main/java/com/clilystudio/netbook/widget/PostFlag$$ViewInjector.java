package com.clilystudio.netbook.widget;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class PostFlag$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, PostFlag paramPostFlag, Object paramObject)
  {
    paramPostFlag.mHotFlag = ((TextView)paramFinder.findRequiredView(paramObject, 2131493180, "field 'mHotFlag'"));
    paramPostFlag.mDistillateFlag = ((TextView)paramFinder.findRequiredView(paramObject, 2131493423, "field 'mDistillateFlag'"));
  }

  public static void reset(PostFlag paramPostFlag)
  {
    paramPostFlag.mHotFlag = null;
    paramPostFlag.mDistillateFlag = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.PostFlag..ViewInjector
 * JD-Core Version:    0.6.0
 */