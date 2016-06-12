package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.TxtFileObject;

public final class Q extends e {

    private ScanTxtFileActivity a;

    public Q(ScanTxtFileActivity ScanTxtFileActivity1) {
        a = ScanTxtFileActivity1;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        ScanTxtFileActivity.b(a, 0);
        ScanTxtFileActivity.a(a, TxtFileObject.getTxtFiles());
        a.b();
        return null;
    }

    protected final void onPostExecute(Object Object1) {
        super.onPostExecute((Void) Object1);
        a.mPbLoading.setVisibility(8);
        if (ScanTxtFileActivity.b(a).size() == 0) {
            a.mEmpty.setVisibility(0);
            a.mList.setVisibility(8);
            ScanTxtFileActivity.a(a, 0);
        }
        i.a().c(new A());
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        a.mPbLoading.setVisibility(0);
    }
}
