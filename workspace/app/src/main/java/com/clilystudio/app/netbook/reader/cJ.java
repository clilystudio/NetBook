package com.clilystudio.app.netbook.reader;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.model.mixtoc.SgTocRoot;

final class cJ extends c<String, SgTocRoot> {
    private int a;
    private String b;

    public cJ(ReaderWebActivity paramReaderWebActivity, Activity paramActivity, int paramInt, String paramString) {
        super(paramActivity, 2131034218);
        this.a = paramInt;
        this.b = paramString;
    }

    private SgTocRoot a(String[] paramArrayOfString) {
        try {
            SgTocRoot localSgTocRoot = b.b().s(paramArrayOfString[0]);
            return localSgTocRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cJ
 * JD-Core Version:    0.6.2
 */