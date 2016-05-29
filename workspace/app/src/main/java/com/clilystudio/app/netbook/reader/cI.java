package com.clilystudio.app.netbook.reader;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.mixtoc.EsTocRoot;

final class cI extends c<String, EsTocRoot> {
    private int a;

    public cI(ReaderWebActivity paramReaderWebActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034218);
        this.a = paramInt;
    }

    private EsTocRoot a(String[] paramArrayOfString) {
        try {
            EsTocRoot localEsTocRoot = b.b().v(paramArrayOfString[0]);
            return localEsTocRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cI
 * JD-Core Version:    0.6.2
 */