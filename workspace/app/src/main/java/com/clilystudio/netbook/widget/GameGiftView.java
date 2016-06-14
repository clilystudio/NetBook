package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

import com.clilystudio.netbook.model.GameGiftRoot;

public class GameGiftView extends LinearLayout {
    private boolean a;

    public GameGiftView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(GameGiftView gameGiftView, GameGiftRoot gameGiftRoot) {
        View view = gameGiftView.findViewById(2131493480);
        view.setVisibility(View.VISIBLE);
        view.setOnClickListener(new K(gameGiftView, gameGiftRoot));
    }

    static /* synthetic */ boolean a(GameGiftView gameGiftView) {
        return gameGiftView.a;
    }

    public final void a(String string, boolean bl) {
        this.a = bl;
        new L(this, 0).b(string);
    }
}
