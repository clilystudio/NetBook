package com.clilystudio.netbook.reader;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class ReaderMenuFragment$TocHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, ReaderMenuFragment$TocHolder readerMenuFragment$TocHolder, Object object) {
        readerMenuFragment$TocHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        readerMenuFragment$TocHolder.link = (TextView) butterKnife$Finder.findRequiredView(object, 2131493736, "field 'link'");
        readerMenuFragment$TocHolder.time = (TextView) butterKnife$Finder.findRequiredView(object, 2131492935, "field 'time'");
    }

    public static void reset(ReaderMenuFragment$TocHolder readerMenuFragment$TocHolder) {
        readerMenuFragment$TocHolder.title = null;
        readerMenuFragment$TocHolder.link = null;
        readerMenuFragment$TocHolder.time = null;
    }
}
