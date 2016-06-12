package com.clilystudio.netbook.reader.txt;

import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class ScanTxtFileActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, ScanTxtFileActivity ScanTxtFileActivity2, Object Object3) {
        ScanTxtFileActivity2.mStatus = (TextView) Finder1.findRequiredView(Object3, 2131493180, "field 'mStatus'");
        ScanTxtFileActivity2.mList = (ListView) Finder1.findRequiredView(Object3, 2131492924, "field 'mList'");
        ScanTxtFileActivity2.mPbLoading = (ProgressBar) Finder1.findRequiredView(Object3, 2131493085, "field 'mPbLoading'");
        ScanTxtFileActivity2.mEmpty = (TextView) Finder1.findRequiredView(Object3, 2131493181, "field 'mEmpty'");
    }

    public static void reset(ScanTxtFileActivity ScanTxtFileActivity1) {
        ScanTxtFileActivity1.mStatus = null;
        ScanTxtFileActivity1.mList = null;
        ScanTxtFileActivity1.mPbLoading = null;
        ScanTxtFileActivity1.mEmpty = null;
    }
}
