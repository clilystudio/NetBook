package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameDetail;

import java.io.IOException;

final class q extends e<String, Void, GameDetail> {
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

