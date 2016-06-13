package com.clilystudio.netbook.reader;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class ReadModeItem$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, ReadModeItem readModeItem, Object object) {
        readModeItem.mIcon = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        readModeItem.mName = (TextView) butterKnife$Finder.findRequiredView(object, 2131492928, "field 'mName'");
        readModeItem.mFlagSelect = (TextView) butterKnife$Finder.findRequiredView(object, 2131493703, "field 'mFlagSelect'");
        readModeItem.mFlagWeb = (TextView) butterKnife$Finder.findRequiredView(object, 2131493701, "field 'mFlagWeb'");
        readModeItem.mChapter = (TextView) butterKnife$Finder.findRequiredView(object, 2131493702, "field 'mChapter'");
    }

    public static void reset(ReadModeItem readModeItem) {
        readModeItem.mIcon = null;
        readModeItem.mName = null;
        readModeItem.mFlagSelect = null;
        readModeItem.mFlagWeb = null;
        readModeItem.mChapter = null;
    }
}
