package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UGCBookListRoot;

final class as extends e_BaseAsyncTask<String, Void, UGCBookListRoot> {
    private as(UGCMainListFragment paramUGCMainListFragment) {
    }

    private UGCBookListRoot a() {
        if (!isCancelled())
            try {
                b.a();
                UGCBookListRoot localUGCBookListRoot = b.b().a(this.a.getArguments().getString("duration"), this.a.getArguments().getString("sort"), UGCMainListFragment.h(this.a).getCount(), 20, this.a.b());
                return localUGCBookListRoot;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.as
 * JD-Core Version:    0.6.2
 */