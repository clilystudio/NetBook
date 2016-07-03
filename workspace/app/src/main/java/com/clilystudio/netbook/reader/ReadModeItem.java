package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;


public class ReadModeItem extends FrameLayout {
    TextView mChapter;
    TextView mFlagSelect;
    TextView mFlagWeb;
    ImageView mIcon;
    TextView mName;
    private Activity a;
    private String b;
    private String c;

    public ReadModeItem(Activity activity, int n, int n2, final int n3, final int n4, String string, String string2) {
        super(activity);
        this.a = activity;
        this.b = string;
        this.c = string2;
        LayoutInflater.from(this.a).inflate(R.layout.list_item_mode, this);
        this.mIcon = (ImageView) findViewById(R.id.icon);
        this.mName = (TextView) findViewById(R.id.name);
        this.mFlagSelect = (TextView) findViewById(R.id.flag_select);
        this.mFlagWeb = (TextView) findViewById(R.id.flag_web);
        this.mChapter = (TextView) findViewById(R.id.chapter);
        this.mIcon.setImageResource(n);
        this.mName.setText(n2);
        if (n3 == n4) {
            this.mFlagSelect.setVisibility(View.VISIBLE);
            this.mFlagSelect.setText("\u5f53\u524d\u9009\u62e9");
        }
        if (com.clilystudio.netbook.hpay100.a.a.f(n3)) {
            this.mFlagWeb.setVisibility(View.VISIBLE);
        }
        this.mChapter.setVisibility(View.GONE);
        this.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (n4 != n3) {
                    MyApplication.a().c(ReadModeItem.a(ReadModeItem.this));
                    com.clilystudio.netbook.am.c(ReadModeItem.a(ReadModeItem.this), n3);
                    ReadModeItem.a(ReadModeItem.this, n3);
                }
                ReadModeItem.b(ReadModeItem.this).finish();
            }
        });
    }

    public ReadModeItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ String a(ReadModeItem readModeItem) {
        return readModeItem.b;
    }

    private static void a() {
        i.a().post(new v(1));
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
