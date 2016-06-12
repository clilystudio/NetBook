package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.LinearLayout;

import com.clilystudio.netbook.model.GameGiftRoot;

public class GameGiftView extends LinearLayout {

    private boolean a;

    public GameGiftView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(GameGiftView GameGiftView1, GameGiftRoot GameGiftRoot2) {
        View View3 = GameGiftView1.findViewById(2131493480);

        View3.setVisibility(0);
        View3.setOnClickListener((View$OnClickListener) new K(GameGiftView1, GameGiftRoot2));
    }

    static boolean a(GameGiftView GameGiftView1) {
        return GameGiftView1.a;
    }

    public final void a(String String1, boolean boolean2) {
        a = boolean2;
        new L(this, (byte) 0).b(new String[]{String1});
    }
}
