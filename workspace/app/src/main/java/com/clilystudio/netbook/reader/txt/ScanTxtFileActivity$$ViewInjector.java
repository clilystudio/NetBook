package com.clilystudio.netbook.reader.txt;

import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class ScanTxtFileActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, ScanTxtFileActivity scanTxtFileActivity, Object object) {
        scanTxtFileActivity.mStatus = (TextView) butterKnife$Finder.findRequiredView(object, 2131493180, "field 'mStatus'");
        scanTxtFileActivity.mList = (ListView) butterKnife$Finder.findRequiredView(object, 2131492924, "field 'mList'");
        scanTxtFileActivity.mPbLoading = (ProgressBar) butterKnife$Finder.findRequiredView(object, 2131493085, "field 'mPbLoading'");
        scanTxtFileActivity.mEmpty = (TextView) butterKnife$Finder.findRequiredView(object, 2131493181, "field 'mEmpty'");
    }

    public static void reset(ScanTxtFileActivity scanTxtFileActivity) {
        scanTxtFileActivity.mStatus = null;
        scanTxtFileActivity.mList = null;
        scanTxtFileActivity.mPbLoading = null;
        scanTxtFileActivity.mEmpty = null;
    }
}
