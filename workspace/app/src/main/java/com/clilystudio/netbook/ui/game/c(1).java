package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameCat;
import com.clilystudio.netbook.model.GameCatRoot;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class c extends e<String, Void, List<GameCat>> {
    private c(GameCatListFragment paramGameCatListFragment) {
    }

    private static List<GameCat> a() {
        try {
            b.a();
            GameCatRoot localGameCatRoot = b.b().r();
            if ((localGameCatRoot != null) && (localGameCatRoot.isOk()) && (localGameCatRoot.getGames() != null)) {
                List localList = Arrays.asList(localGameCatRoot.getGames());
                return localList;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}
