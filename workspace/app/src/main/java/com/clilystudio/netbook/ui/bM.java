package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.widget.AutoFlowView$Word;

import java.util.ArrayList;

final class bM extends com.clilystudio.netbook.a_pack.e<String, Void, HotKeywordResult> {
    final /* synthetic */ SearchActivity a;

    private bM(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    /* synthetic */ bM(SearchActivity searchActivity, byte by) {
        this(searchActivity);
    }

    private /* varargs */ HotKeywordResult a() {
        try {
            HotKeywordResult hotKeywordResult = this.c().b();
            return hotKeywordResult;
        } catch (Throwable var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        HotKeywordResult hotKeywordResult = (HotKeywordResult) object;
        if (hotKeywordResult != null) {
            ArrayList<AutoFlowView$Word> arrayList = new ArrayList<AutoFlowView$Word>();
            for (String string : hotKeywordResult.getHotWords()) {
                AutoFlowView$Word autoFlowView$Word = new AutoFlowView$Word();
                autoFlowView$Word.show = 0;
                autoFlowView$Word.content = string;
                arrayList.add(autoFlowView$Word);
            }
            a.a(arrayList, c.e, "search_hotword.txt");
            SearchActivity.g(this.a).setVisibility(0);
            SearchActivity.e(this.a).setWords(hotKeywordResult.getHotWords());
            SearchActivity.e(this.a).setOnItemClickListener(new bN(this));
            SearchActivity.h(this.a).setOnClickListener(new bO(this));
            return;
        }
        e.a((Activity) this.a, (String) "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff01");
    }
}
