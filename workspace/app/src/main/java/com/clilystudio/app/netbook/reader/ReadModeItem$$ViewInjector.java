package com.clilystudio.app.netbook.reader;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class ReadModeItem$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, ReadModeItem paramReadModeItem, Object paramObject) {
        paramReadModeItem.mIcon = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
        paramReadModeItem.mName = ((TextView) paramFinder.findRequiredView(paramObject, 2131492928, "field 'mName'"));
        paramReadModeItem.mFlagSelect = ((TextView) paramFinder.findRequiredView(paramObject, 2131493703, "field 'mFlagSelect'"));
        paramReadModeItem.mFlagWeb = ((TextView) paramFinder.findRequiredView(paramObject, 2131493701, "field 'mFlagWeb'"));
        paramReadModeItem.mChapter = ((TextView) paramFinder.findRequiredView(paramObject, 2131493702, "field 'mChapter'"));
    }

    public static void reset(ReadModeItem paramReadModeItem) {
        paramReadModeItem.mIcon = null;
        paramReadModeItem.mName = null;
        paramReadModeItem.mFlagSelect = null;
        paramReadModeItem.mFlagWeb = null;
        paramReadModeItem.mChapter = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ReadModeItem..ViewInjector
 * JD-Core Version:    0.6.2
 */