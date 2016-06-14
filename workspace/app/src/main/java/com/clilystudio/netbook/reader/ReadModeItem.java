package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ReadModeItem extends FrameLayout {
    @InjectView(value = 2131493702)
    TextView mChapter;
    @InjectView(value = 2131493703)
    TextView mFlagSelect;
    @InjectView(value = 2131493701)
    TextView mFlagWeb;
    @InjectView(value = 2131493028)
    ImageView mIcon;
    @InjectView(value = 2131492928)
    TextView mName;
    private Activity a;
    private String b;
    private String c;

    public ReadModeItem(Activity activity, int n, int n2, int n3, int n4, String string, String string2) {
        super(activity);
        this.a = activity;
        this.b = string;
        this.c = string2;
        LayoutInflater.from(this.a).inflate(2130903288, (ViewGroup) this);
        ButterKnife.inject(this);
        this.mIcon.setImageResource(n);
        this.mName.setText(n2);
        if (n3 == n4) {
            this.mFlagSelect.setVisibility(View.VISIBLE);
            this.mFlagSelect.setText("\u5f53\u524d\u9009\u62e9");
        }
        if (a.f(n3)) {
            this.mFlagWeb.setVisibility(View.VISIBLE);
        }
        this.mChapter.setVisibility(View.GONE);
        this.setOnClickListener(new O(this, n4, n3));
    }

    public ReadModeItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ String a(ReadModeItem readModeItem) {
        return readModeItem.b;
    }

    private static void a() {
        i.a().c(new v(1));
    }

    static /* synthetic */ void a(ReadModeItem readModeItem, int n2) {
        switch (n2) {
            default: {
                ReadModeItem.a();
                Intent intent = ReaderActivity.a(readModeItem.a, readModeItem.b, readModeItem.c, "MIX_TOC_ID", null, false);
                readModeItem.a.startActivity(intent);
                readModeItem.a.finish();
                return;
            }
            case 0:
            case 1:
            case 2:
            case 4:
        }
        ReadModeItem.a();
        Intent intent = ReaderResActivity.a(readModeItem.a, readModeItem.b, readModeItem.c, n2);
        readModeItem.a.startActivity(intent);
        readModeItem.a.finish();
    }

    static /* synthetic */ Activity b(ReadModeItem readModeItem) {
        return readModeItem.a;
    }
}
