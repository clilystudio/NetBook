package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.a_pack.e;

public final class Q extends e<Void, Void, Void> {
    public Q(ScanTxtFileActivity paramScanTxtFileActivity) {
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        this.a.mPbLoading.setVisibility(0);
    }
}

