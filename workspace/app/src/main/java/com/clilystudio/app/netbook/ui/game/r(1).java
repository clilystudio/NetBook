package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GamePostRoot;
import com.clilystudio.app.netbook.model.GamePostRoot.GamePost;

import java.util.Arrays;
import java.util.List;

final class r extends e_BaseAsyncTask<String, Void, List<GamePostRoot.GamePost>> {
    private r(GameDetailActivity paramGameDetailActivity) {
    }

    private List<GamePostRoot.GamePost> a(String[] paramArrayOfString) {
        try {
            GamePostRoot localGamePostRoot = b.b().d(paramArrayOfString[0], GameDetailActivity.c_initContentView(this.a).size(), 10);
            if ((localGamePostRoot != null) && (localGamePostRoot.getPosts() != null)) {
                List localList = Arrays.asList(localGamePostRoot.getPosts());
                return localList;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.r
 * JD-Core Version:    0.6.2
 */