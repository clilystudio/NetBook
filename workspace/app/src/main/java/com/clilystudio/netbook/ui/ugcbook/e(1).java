package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.ui.BaseActivity;

final class e extends com.clilystudio.netbook.a_pack.e<String, Void, UGCBookListRoot> {
    private e(AbsUGCListFragment paramAbsUGCListFragment) {
    }

    private UGCBookListRoot a() {
        try {
            Account localAccount = am.a((BaseActivity) this.a.getActivity());
            if (localAccount != null) {
                UGCBookListRoot localUGCBookListRoot = this.a.a(localAccount, 0);
                return localUGCBookListRoot;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

