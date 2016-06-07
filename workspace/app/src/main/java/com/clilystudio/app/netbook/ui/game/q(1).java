package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GameDetail;

import java.io.IOException;

final class q extends e_BaseAsyncTask<String, Void, GameDetail> {
    private q(GameDetailActivity paramGameDetailActivity) {
    }

    private GameDetail a(String[] paramArrayOfString) {
        try {
            GameDetail localGameDetail = b.b().Y(paramArrayOfString[0]);
            return localGameDetail;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.q
 * JD-Core Version:    0.6.2
 */