package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameRoot;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class am_Task extends e<String, Void, List<Game>> {
    private am_Task(GameRankListFragment paramGameRankListFragment) {
    }

    private List<Game> a() {
        try {
            b.a();
            GameRoot localGameRoot = b.b().a(GameRankListFragment.b(this.a).size(), 20);
            if ((localGameRoot != null) && (localGameRoot.isOk()) && (localGameRoot.getGames() != null)) {
                List localList = Arrays.asList(localGameRoot.getGames());
                return localList;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

