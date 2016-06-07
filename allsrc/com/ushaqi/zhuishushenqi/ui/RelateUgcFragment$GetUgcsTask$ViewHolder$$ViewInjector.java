package com.ushaqi.zhuishushenqi.ui;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.ushaqi.zhuishushenqi.widget.CoverView;

public class RelateUgcFragment$GetUgcsTask$ViewHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, RelateUgcFragment.GetUgcsTask.ViewHolder paramViewHolder, Object paramObject)
  {
    paramViewHolder.mCover = ((CoverView)paramFinder.findRequiredView(paramObject, 2131493604, "field 'mCover'"));
    paramViewHolder.mTitle = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
    paramViewHolder.mCount = ((TextView)paramFinder.findRequiredView(paramObject, 2131493239, "field 'mCount'"));
    paramViewHolder.mAuthor = ((TextView)paramFinder.findRequiredView(paramObject, 2131493317, "field 'mAuthor'"));
    paramViewHolder.mDesc = ((TextView)paramFinder.findRequiredView(paramObject, 2131493481, "field 'mDesc'"));
    paramViewHolder.mUpdated = ((TextView)paramFinder.findRequiredView(paramObject, 2131493783, "field 'mUpdated'"));
    paramViewHolder.mContainer = paramFinder.findRequiredView(paramObject, 2131493577, "field 'mContainer'");
  }

  public static void reset(RelateUgcFragment.GetUgcsTask.ViewHolder paramViewHolder)
  {
    paramViewHolder.mCover = null;
    paramViewHolder.mTitle = null;
    paramViewHolder.mCount = null;
    paramViewHolder.mAuthor = null;
    paramViewHolder.mDesc = null;
    paramViewHolder.mUpdated = null;
    paramViewHolder.mContainer = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.RelateUgcFragment.GetUgcsTask.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */