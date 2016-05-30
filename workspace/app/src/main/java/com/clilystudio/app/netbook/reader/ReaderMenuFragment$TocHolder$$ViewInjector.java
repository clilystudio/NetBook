package com.clilystudio.app.netbook.reader;

import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class ReaderMenuFragment$TocHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, ReaderMenuFragment.TocHolder paramTocHolder, Object paramObject) {
        paramTocHolder.title = ((TextView) paramFinder.findRequiredView(paramObject, R.id.title, "field 'title'"));
        paramTocHolder.link = ((TextView) paramFinder.findRequiredView(paramObject, 2131493736, "field 'link'"));
        paramTocHolder.time = ((TextView) paramFinder.findRequiredView(paramObject, 2131492935, "field 'time'"));
    }

    public static void reset(ReaderMenuFragment.TocHolder paramTocHolder) {
        paramTocHolder.title = null;
        paramTocHolder.link = null;
        paramTocHolder.time = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ReaderMenuFragment.TocHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */