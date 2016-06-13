package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.TxtFileObject;

public final class Q
        extends e<Void, Void, Void> {
    private /* synthetic */ ScanTxtFileActivity a;

    public Q(ScanTxtFileActivity scanTxtFileActivity) {
        this.a = scanTxtFileActivity;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        ScanTxtFileActivity.b(this.a, 0);
        ScanTxtFileActivity.a(this.a, TxtFileObject.getTxtFiles());
        this.a.b();
        return null;
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        super.onPostExecute((Void) object);
        this.a.mPbLoading.setVisibility(8);
        if (ScanTxtFileActivity.b(this.a).size() == 0) {
            this.a.mEmpty.setVisibility(0);
            this.a.mList.setVisibility(8);
            ScanTxtFileActivity.a(this.a, 0);
        }
        i.a().c(new A());
    }

    @Override
    protected final void onPreExecute() {
        super.onPreExecute();
        this.a.mPbLoading.setVisibility(0);
    }
}
