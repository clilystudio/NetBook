package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.HotKeywordResult;

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

