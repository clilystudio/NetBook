package com.ushaqi.zhuishushenqi.widget;

import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.ui.MaskAbleImageView;

public class HomeFindItem$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, HomeFindItem paramHomeFindItem, Object paramObject)
  {
    paramHomeFindItem.mIcon = ((MaskAbleImageView)paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
    paramHomeFindItem.mTitle = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
    paramHomeFindItem.mSubFlag = ((ImageView)paramFinder.findRequiredView(paramObject, 2131493681, "field 'mSubFlag'"));
    paramHomeFindItem.mSubText = ((TextView)paramFinder.findRequiredView(paramObject, 2131493683, "field 'mSubText'"));
  }

  public static void reset(HomeFindItem paramHomeFindItem)
  {
    paramHomeFindItem.mIcon = null;
    paramHomeFindItem.mTitle = null;
    paramHomeFindItem.mSubFlag = null;
    paramHomeFindItem.mSubText = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.HomeFindItem..ViewInjector
 * JD-Core Version:    0.6.0
 */