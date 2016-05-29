package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.model.HotKeywordResult;

final class bM extends e<String, Void, HotKeywordResult> {
    private bM(SearchActivity paramSearchActivity) {
    }

    private HotKeywordResult a() {
        try {
            HotKeywordResult localHotKeywordResult = c().b();
            return localHotKeywordResult;
        } catch (Throwable localThrowable) {
            localThrowable.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bM
 * JD-Core Version:    0.6.2
 */