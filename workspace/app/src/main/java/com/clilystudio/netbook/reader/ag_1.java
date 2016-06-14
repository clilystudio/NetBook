package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;

public final class ag
        extends e<String, Void, Boolean> {
    private af a;
    private /* synthetic */ Reader b;

    public ag(Reader reader) {
        this.b = reader;
    }

    public final void a(af af2) {
        this.a = af2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        boolean bl;
        Reader.a(this.b, Reader.m(this.b));
        if (Reader.l(this.b) != null) {
            Reader.b(this.b, Reader.l(this.b));
        }
        if (Reader.l(this.b) != null) {
            bl = true;
            do {
                return bl;
                break;
            } while (true);
        }
        bl = false;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Boolean bl = (Boolean) object;
        super.onPostExecute(bl);
        if (bl.booleanValue()) {
            Reader.a(this.b, Reader.l(this.b).getHost());
            Reader.a(this.b, Reader.l(this.b).getChapters());
            for (Integer n2 : this.b.a.keySet()) {
                this.b.a.get(n2).setMaxIndex(this.b.g());
            }
        }
        if (this.a != null) {
            if (bl.booleanValue()) {
                this.a.a();
            } else {
                this.a.b();
            }
        }
        Reader.a(this.b, null);
    }
}
