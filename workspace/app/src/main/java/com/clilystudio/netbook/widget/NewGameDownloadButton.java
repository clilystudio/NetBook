package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

import com.clilystudio.netbook.R$styleable;
import com.clilystudio.netbook.umeng.a.b;

public class NewGameDownloadButton extends GameDownloadButton {

    private String a;     // final access specifier removed

    public NewGameDownloadButton(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes(AttributeSet2, R$styleable.NewGameDownloadButton);
        a = TypedArray3.getString(0);
        TypedArray3.recycle();
    }

    protected final void a() {
        c();
    }

    protected final void b() {
        setText((CharSequence) "\u4E0B\u8F7D\u4E2D");
        setTextColor(-9079435);
        setBackgroundResource(2130837729);
    }

    protected void c() {
        setText((CharSequence) "\u5B89\u88C5");
        setTextColor(-1);
        setBackgroundResource(2130837728);
    }

    protected final void d() {
        setText((CharSequence) "\u6253\u5F00");
        setTextColor(-14540254);
        setBackgroundResource(2130837731);
    }

    protected final void e() {
        super.e();
        if (h() != null) {
            if ("promotion".equals(a))
                b.a(getContext(), "game_center_main_install_promotion", h().getName());
            else {
                b.a(getContext(), "game_center_main_install", h().getName());
                return;
            }
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setPadding(0, 0, 0, 0);
    }
}
