package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.view.View;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.view.a;
import com.umeng.a.b;

final class G
        implements View.OnClickListener {
    G(GameGiftItemView paramGameGiftItemView, a parama, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        am_CommonUtils.a_isSameString(this.c.getContext(), this.b);
        e.a((Activity) this.c.getContext(), "已复制");
        if (GameGiftItemView.b(this.c)) {
            am_CommonUtils.a_isSameString(this.c.getContext(), GameGiftItemView.c(this.c).game);
            b.a(this.c.getContext(), "micro_game_play_click", GameGiftItemView.c(this.c).game.getName());
            return;
        }
        am_CommonUtils.d_startActivityForPackage(this.c.getContext(), GameGiftItemView.c(this.c).game.getAndroidPackageName());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.G
 * JD-Core Version:    0.6.2
 */