package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameLayoutRoot;

import java.io.IOException;

final class W extends e<String, Void, GameLayoutRoot> {
    private W(GameMicroFragment paramGameMicroFragment) {
    }

    private static GameLayoutRoot a() {
        try {
            b.a();
            GameLayoutRoot localGameLayoutRoot = b.b().s();
            return localGameLayoutRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

