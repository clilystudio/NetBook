package com.clilystudio.netbook.adapter;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;
import com.clilystudio.netbook.ui.SmartImageView;

public class BookRankAdapter$ViewHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, BookRankAdapter.ViewHolder paramViewHolder, Object paramObject)
  {
    paramViewHolder.cover = ((SmartImageView)paramFinder.findRequiredView(paramObject, 2131493626, "field 'cover'"));
    paramViewHolder.title = ((TextView)paramFinder.findRequiredView(paramObject, 2131493627, "field 'title'"));
  }

  public static void reset(BookRankAdapter.ViewHolder paramViewHolder)
  {
    paramViewHolder.cover = null;
    paramViewHolder.title = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.BookRankAdapter.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */