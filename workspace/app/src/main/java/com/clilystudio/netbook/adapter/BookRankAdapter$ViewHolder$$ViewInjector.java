package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife.Finder;

public class BookRankAdapter$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, BookRankAdapter.ViewHolder paramViewHolder, Object paramObject) {
        paramViewHolder.cover = ((SmartImageView) paramFinder.findRequiredView(paramObject, 2131493626, "field 'cover'"));
        paramViewHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, 2131493627, "field 'title'"));
    }

    public static void reset(BookRankAdapter.ViewHolder paramViewHolder) {
        paramViewHolder.cover = null;
        paramViewHolder.title = null;
    }
}

