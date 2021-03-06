package com.ushaqi.zhuishushenqi.ui;

import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.widget.RatingView;

public class BestReviewsFragment$ViewHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, BestReviewsFragment.ViewHolder paramViewHolder, Object paramObject)
  {
    paramViewHolder.avatar = ((SmartImageView)paramFinder.findRequiredView(paramObject, 2131492899, "field 'avatar'"));
    paramViewHolder.user = ((TextView)paramFinder.findRequiredView(paramObject, 2131493630, "field 'user'"));
    paramViewHolder.lv = ((TextView)paramFinder.findRequiredView(paramObject, 2131493631, "field 'lv'"));
    paramViewHolder.time = ((TextView)paramFinder.findRequiredView(paramObject, 2131492935, "field 'time'"));
    paramViewHolder.title = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
    paramViewHolder.content = ((TextView)paramFinder.findRequiredView(paramObject, 2131492905, "field 'content'"));
    paramViewHolder.helpfulCount = ((TextView)paramFinder.findRequiredView(paramObject, 2131493634, "field 'helpfulCount'"));
    paramViewHolder.avatarVerify = ((ImageView)paramFinder.findRequiredView(paramObject, 2131493629, "field 'avatarVerify'"));
    paramViewHolder.rating = ((RatingView)paramFinder.findRequiredView(paramObject, 2131493633, "field 'rating'"));
    paramViewHolder.container = paramFinder.findRequiredView(paramObject, 2131493628, "field 'container'");
  }

  public static void reset(BestReviewsFragment.ViewHolder paramViewHolder)
  {
    paramViewHolder.avatar = null;
    paramViewHolder.user = null;
    paramViewHolder.lv = null;
    paramViewHolder.time = null;
    paramViewHolder.title = null;
    paramViewHolder.content = null;
    paramViewHolder.helpfulCount = null;
    paramViewHolder.avatarVerify = null;
    paramViewHolder.rating = null;
    paramViewHolder.container = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BestReviewsFragment.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */