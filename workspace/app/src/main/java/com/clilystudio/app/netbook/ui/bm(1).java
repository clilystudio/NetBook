package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.MhdListRoot;

import java.io.IOException;

final class bm extends e_BaseAsyncTask<Void, Void, MhdListRoot> {
    private bm(MhdListActivity paramMhdListActivity) {
    }

    private MhdListRoot a() {
        try {
            MhdListRoot localMhdListRoot = b.b().g();
            return localMhdListRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bm
 * JD-Core Version:    0.6.2
 */