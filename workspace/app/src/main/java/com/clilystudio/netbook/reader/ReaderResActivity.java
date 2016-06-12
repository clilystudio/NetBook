package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

public class ReaderResActivity extends ReaderModeActivity {

    private View e;
    private int f;

    static int a(ReaderResActivity ReaderResActivity1) {
        return ReaderResActivity1.f;
    }

    static int a(ReaderResActivity ReaderResActivity1, int int2) {
        ReaderResActivity1.f = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3, int int4) {
    }

    static View b(ReaderResActivity ReaderResActivity1) {
        return ReaderResActivity1.e;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onCreate(Bundle Bundle1) {
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onModeChanged(v v1) {
        finish();
    }
}
