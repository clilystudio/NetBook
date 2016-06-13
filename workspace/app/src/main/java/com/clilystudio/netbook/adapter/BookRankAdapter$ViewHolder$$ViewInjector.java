package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife$Finder;

public class BookRankAdapter$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, BookRankAdapter$ViewHolder bookRankAdapter$ViewHolder, Object object) {
        bookRankAdapter$ViewHolder.cover = (SmartImageView) butterKnife$Finder.findRequiredView(object, 2131493626, "field 'cover'");
        bookRankAdapter$ViewHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131493627, "field 'title'");
    }

    public static void reset(BookRankAdapter$ViewHolder bookRankAdapter$ViewHolder) {
        bookRankAdapter$ViewHolder.cover = null;
        bookRankAdapter$ViewHolder.title = null;
    }
}
