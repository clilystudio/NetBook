package com.ushaqi.zhuishushenqi.widget;

import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class TopicSectionItem$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, TopicSectionItem paramTopicSectionItem, Object paramObject)
  {
    paramTopicSectionItem.mIcon = ((ImageView)paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
    paramTopicSectionItem.mLabel = ((TextView)paramFinder.findRequiredView(paramObject, 2131493515, "field 'mLabel'"));
  }

  public static void reset(TopicSectionItem paramTopicSectionItem)
  {
    paramTopicSectionItem.mIcon = null;
    paramTopicSectionItem.mLabel = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.TopicSectionItem..ViewInjector
 * JD-Core Version:    0.6.0
 */