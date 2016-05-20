package com.clilystudio.app.netbook.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.clilystudio.app.netbook.ui.CircularSmartImageView;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.NotificationAdapter.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */