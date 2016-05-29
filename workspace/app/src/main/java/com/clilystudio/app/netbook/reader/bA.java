package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TocSummary;

import java.util.List;

final class bA extends e<String, Void, List<TocSummary>> {
    private bA(ReaderMenuFragment paramReaderMenuFragment) {
    }

    private static List<TocSummary> a(String[] paramArrayOfString) {
        try {
            b.a();
            List localList = b.b().d(paramArrayOfString[0]);
            return localList;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        ReaderMenuFragment.k(this.a).c();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bA
 * JD-Core Version:    0.6.2
 */