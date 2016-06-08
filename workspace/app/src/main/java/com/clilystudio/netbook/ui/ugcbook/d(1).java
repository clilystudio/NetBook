package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.ui.BaseActivity;

final class d extends e<String, Void, UGCBookListRoot> {
    private d(AbsUGCListFragment paramAbsUGCListFragment) {
    }

    private UGCBookListRoot a() {
        if (!isCancelled()) {
            try {
                Account localAccount = am.a((BaseActivity) this.a.getActivity());
                if (localAccount != null) {
                    UGCBookListRoot localUGCBookListRoot = this.a.a(localAccount, this.a.c.getCount());
                    return localUGCBookListRoot;
                }
            } catch (Exception localException) {
                localException.printStackTrace();
            }
            return null;
        }
        return null;
    }
}

