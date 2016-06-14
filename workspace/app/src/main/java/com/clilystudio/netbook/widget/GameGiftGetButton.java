package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.ui.game.GameDetailActivity;

public class GameGiftGetButton extends GameDownloadButton {
    private GameGiftItemView a;

    public GameGiftGetButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        try {
            ((GameDetailActivity) context).a(this);
            return;
        } catch (Exception var3_3) {
            var3_3.printStackTrace();
            return;
        }
    }

    @Override
    protected final void a() {
        this.setText("\u4e0b\u8f7d");
        this.setBackgroundResource(2131427379);
    }

    @Override
    protected final void b() {
        this.setText("\u4e0b\u8f7d\u4e2d");
        this.setBackgroundResource(2131427377);
    }

    @Override
    protected final void c() {
        this.setText("\u5b89\u88c5");
        this.setBackgroundResource(2131427378);
    }

    @Override
    protected final void d() {
        if (this.a != null) {
            this.a.a();
        }
    }

    public void setGiftItemView(GameGiftItemView gameGiftItemView) {
        this.a = gameGiftItemView;
    }
}
