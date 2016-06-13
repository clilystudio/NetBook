package com.clilystudio.netbook.reader;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

final class U
        implements Y {
    final /* synthetic */ Reader a;
    private Map<Integer, ArrayList<e<ReaderChapter>>> b;
    private Map<Integer, Integer> c;

    U(Reader reader) {
        this.a = reader;
        this.b = new HashMap<Integer, ArrayList<e<ReaderChapter>>>();
        this.c = new HashMap<Integer, Integer>();
    }

    static /* synthetic */ Map a(U u) {
        return u.b;
    }

    static /* synthetic */ Map b(U u) {
        return u.c;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void a(int n, e<ReaderChapter> e2, boolean bl) {
        synchronized (this) {
            void var5_6;
            ArrayList<e<ReaderChapter>> arrayList = this.b.get(n);
            if (arrayList == null) {
                ArrayList arrayList2 = new ArrayList();
                this.b.put(n, arrayList2);
            }
            var5_6.add(e2);
            if (!bl) {
                Reader.a(this.a, 0, Reader$Type.CHAPTER);
                Integer n2 = this.c.get(n);
                if (n2 == null) {
                    this.c.put(n, 1);
                } else {
                    this.c.put(n, 1 + n2);
                }
            }
            Reader.e(this.a).execute(new V(this, n, n));
            return;
        }
    }
}
