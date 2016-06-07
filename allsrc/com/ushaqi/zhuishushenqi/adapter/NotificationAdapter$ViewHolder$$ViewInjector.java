package com.ushaqi.zhuishushenqi.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.ui.CircularSmartImageView;

public class NotificationAdapter$ViewHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, NotificationAdapter.ViewHolder paramViewHolder, Object paramObject)
  {
    paramViewHolder.mAvatar = ((CircularSmartImageView)paramFinder.findRequiredView(paramObject, 2131492899, "field 'mAvatar'"));
    paramViewHolder.mMainText = ((TextView)paramFinder.findRequiredView(paramObject, 2131493712, "field 'mMainText'"));
    paramViewHolder.mSubText = ((TextView)paramFinder.findRequiredView(paramObject, 2131493713, "field 'mSubText'"));
  }

  public static void reset(NotificationAdapter.ViewHolder paramViewHolder)
  {
    paramViewHolder.mAvatar = null;
    paramViewHolder.mMainText = null;
    paramViewHolder.mSubText = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.NotificationAdapter.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */