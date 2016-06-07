package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookListRoot;
import com.clilystudio.app.netbook.ui.BaseActivity;
import com.clilystudio.app.netbook.util.am_CommonUtils;

final class e_BaseAsyncTask extends com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask<String, Void, UGCBookListRoot> {
    private e_BaseAsyncTask(AbsUGCListFragment paramAbsUGCListFragment) {
    }

    private UGCBookListRoot a() {
        try {
            Account localAccount = am_CommonUtils.a_getLoginAccount((BaseActivity) this.a.getActivity());
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.e
 * JD-Core Version:    0.6.2
 */