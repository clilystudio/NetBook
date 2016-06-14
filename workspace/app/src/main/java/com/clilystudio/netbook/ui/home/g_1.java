package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.IKanshuUrlResult;

import java.io.IOException;

final class g extends e<Void, Void, IKanshuUrlResult> {
    private /* synthetic */ HomeActivity a;

    private g(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    /* synthetic */ g(HomeActivity homeActivity, byte by) {
        this(homeActivity);
    }

    private static /* varargs */ IKanshuUrlResult a() {
        try {
            b.a();
            IKanshuUrlResult iKanshuUrlResult = b.b().t();
            return iKanshuUrlResult;
        } catch (IOException var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        IKanshuUrlResult iKanshuUrlResult = (IKanshuUrlResult) object;
        super.onPostExecute(iKanshuUrlResult);
        if (iKanshuUrlResult != null && iKanshuUrlResult.isOk()) {
            HomeActivity.a(this.a, iKanshuUrlResult.getLinks());
            String string = HomeActivity.a(this.a);
            if (string != null) {
                HomeActivity.a(this.a, string);
            }
        }
    }
}
