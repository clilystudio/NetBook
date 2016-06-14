package com.clilystudio.netbook.ui.game;

import android.text.TextUtils;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameCat;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;

final class b extends W<GameCat> {
    public b(GameCatListFragment gameCatListFragment, LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903276);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        GameCat gameCat = (GameCat) object;
        Game[] arrgame = gameCat.getGames();
        if (arrgame.length > 0) {
            SmartImageView smartImageView = (SmartImageView) this.a(0, SmartImageView.class);
            smartImageView.setDrawingCacheEnabled(true);
            smartImageView.setImageUrl(arrgame[0].getIcon(), 2130837766);
            int n2 = arrgame.length > 3 ? 3 : arrgame.length;
            Object[] arrobject = new String[n2];
            for (int i = 0; i < n2; ++i) {
                arrobject[i] = arrgame[i].getName();
            }
            this.a(2, TextUtils.join((CharSequence) "\u3001", arrobject));
        }
        this.a(1, gameCat.get_id());
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493655, 2131493656, 2131493657};
    }
}
