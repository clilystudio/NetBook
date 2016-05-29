package com.clilystudio.app.netbook.reader.txt;

import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class ScanTxtFileActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, ScanTxtFileActivity paramScanTxtFileActivity, Object paramObject) {
        paramScanTxtFileActivity.mStatus = ((TextView) paramFinder.findRequiredView(paramObject, 2131493180, "field 'mStatus'"));
        paramScanTxtFileActivity.mList = ((ListView) paramFinder.findRequiredView(paramObject, 2131492924, "field 'mList'"));
        paramScanTxtFileActivity.mPbLoading = ((ProgressBar) paramFinder.findRequiredView(paramObject, 2131493085, "field 'mPbLoading'"));
        paramScanTxtFileActivity.mEmpty = ((TextView) paramFinder.findRequiredView(paramObject, 2131493181, "field 'mEmpty'"));
    }

    public static void reset(ScanTxtFileActivity paramScanTxtFileActivity) {
        paramScanTxtFileActivity.mStatus = null;
        paramScanTxtFileActivity.mList = null;
        paramScanTxtFileActivity.mPbLoading = null;
        paramScanTxtFileActivity.mEmpty = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.ScanTxtFileActivity..ViewInjector
 * JD-Core Version:    0.6.2
 */