package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;

import java.util.Iterator;

public final class ag extends e {

    private af a;
    private Reader b;
    public ag(Reader Reader1) {
        b = Reader1;
    }

    public final void a(af af1) {
        a = af1;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        boolean boolean3;

        Reader.a(b, Reader.m(b));
        if (Reader.l(b) != null)
            Reader.b(b, Reader.l(b));
        if (Reader.l(b) != null)
            boolean3 = true;
        else
            boolean3 = false;
        return Boolean.valueOf(boolean3);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (Boolean) Object1;

        super.onPostExecute(Object2);
        if (((Boolean) Object2).booleanValue()) {
            Iterator Iterator5;

            Reader.a(b, Reader.l(b).getHost());
            Reader.a(b, Reader.l(b).getChapters());
            Iterator5 = b.a.keySet().iterator();
            while (Iterator5.hasNext()) {
                Integer Integer6 = (Integer) Iterator5.next();

                ((ReaderChapter) b.a.get(Integer6)).setMaxIndex(b.g());
            }
        }
        if (a != null) {
            if (((Boolean) Object2).booleanValue())
                a.a();
            else
                a.b();
        }
        Reader.a(b, null);
    }
}
