package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

public class ReaderResActivity extends ReaderModeActivity {
    private View e;
    private int f;

    static /* synthetic */ int a(ReaderResActivity readerResActivity) {
        return readerResActivity.f;
    }

    static /* synthetic */ int a(ReaderResActivity readerResActivity, int n) {
        readerResActivity.f = n;
        return n;
    }

    public static Intent a(Context context, String string, String string2, int n) {
        return new d().a(context, ReaderResActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("BOOK_MODE", n).a();
    }

    static /* synthetic */ View b(ReaderResActivity readerResActivity) {
        return readerResActivity.e;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        void var4_6;
        super.onCreate(bundle);
        this.setContentView(R.layout.content_frame);
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_read_mode, null);
        view.findViewById(R.id.reader_ab_more).setVisibility(View.GONE);
        view.findViewById(R.id.back).setOnClickListener(new bQ(this));
        view.findViewById(R.id.reader_ab_read_mode).setOnClickListener(new bR(this));
        this.e = view.findViewById(R.id.reader_ab_topic_count);
        view.findViewById(R.id.reader_ab_topic).setOnClickListener(new bS(this));
        this.a().a(view);
        this.a().d(true);
        i.a().a(this);
        this.f(this.c);
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        if (this.a == 0) {
            ReaderResourceFragment readerResourceFragment = (ReaderResourceFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderResourceFragment.class.getName());
            if (readerResourceFragment == null) {
                ReaderResourceFragment readerResourceFragment2 = ReaderResourceFragment.a(this.b, this.c);
            }
        } else {
            ReaderWebPageFragment readerWebPageFragment = this.a(this.c);
        }
        fragmentTransaction.replace(R.id.content_frame, (Fragment) var4_6).commit();
        com.clilystudio.netbook.a.a();
        com.clilystudio.netbook.a.a(this);
        bT bT2 = new bT(this, 0);
        String[] arrstring = new String[]{this.b};
        bT2.b(arrstring);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onModeChanged(v v2) {
        this.finish();
    }
}
