package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.RemoteBookShelf;

final class ab extends e<String, Void, RemoteBookShelf> {
    private /* synthetic */ Z a;

    private ab(Z z) {
        this.a = z;
    }

    /* synthetic */ ab(Z z, byte by) {
        this(z);
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        String[] arrstring = (String[]) arrobject;
        Z.b(true);
        return Z.a(this.a, arrstring[0]);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        RemoteBookShelf remoteBookShelf = (RemoteBookShelf) object;
        super.onPostExecute(remoteBookShelf);
        Z.b(false);
        if (remoteBookShelf != null && remoteBookShelf.isNeedSync() && remoteBookShelf.isOk()) {
            Z.a(this.a, remoteBookShelf);
            i.a().c(new A(remoteBookShelf.getTotalBookCounts()));
        }
    }
}
