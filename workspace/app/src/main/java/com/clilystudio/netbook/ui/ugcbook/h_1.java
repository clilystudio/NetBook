package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class h
        extends com.clilystudio.netbook.a.e<String, Void, ResultStatus> {
    private /* synthetic */ FavUGCListFragment a;

    private h(FavUGCListFragment favUGCListFragment) {
        this.a = favUGCListFragment;
    }

    /* synthetic */ h(FavUGCListFragment favUGCListFragment, byte by) {
        this(favUGCListFragment);
    }

    private static /* varargs */ ResultStatus a(String... arrstring) {
        try {
            b.a();
            ResultStatus resultStatus = b.b().E(arrstring[0], arrstring[1]);
            return resultStatus;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return h.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus != null && resultStatus.isOk()) {
            this.a.a();
            e.a((Activity) this.a.getActivity(), "\u5220\u9664\u6210\u529f");
            return;
        }
        e.a((Activity) this.a.getActivity(), "\u5220\u9664\u5931\u8d25");
    }
}
