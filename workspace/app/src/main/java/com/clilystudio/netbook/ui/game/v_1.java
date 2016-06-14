package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GamesGiftRoot;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class v extends e<String, Void, List<GameGiftGroup>> {
    private /* synthetic */ GameGiftFragment a;

    private v(GameGiftFragment gameGiftFragment) {
        this.a = gameGiftFragment;
    }

    /* synthetic */ v(GameGiftFragment gameGiftFragment, byte by) {
        this(gameGiftFragment);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static /* varargs */ List<GameGiftGroup> a() {
        try {
            b.a();
            GamesGiftRoot gamesGiftRoot = b.b().b(0, 30);
            if (gamesGiftRoot == null || !gamesGiftRoot.ok || gamesGiftRoot.games == null) return null;
            {
                List<GiftGame> list = Arrays.asList(gamesGiftRoot.games);
                ArrayList<GameGiftGroup> arrayList = new ArrayList<GameGiftGroup>();
                int n = 0;
                while (n < list.size()) {
                    GiftGame giftGame = list.get(n);
                    GameGiftGroup gameGiftGroup = new GameGiftGroup();
                    gameGiftGroup.setType(0);
                    gameGiftGroup.setGame(giftGame);
                    arrayList.add(gameGiftGroup);
                    GiftGameGift[] arrgiftGameGift = giftGame.gifts;
                    if (arrgiftGameGift != null && arrgiftGameGift.length != 0) {
                        boolean bl;
                        int n2 = arrgiftGameGift.length;
                        if (n2 > 3) {
                            n2 = 3;
                            bl = true;
                        } else {
                            bl = false;
                        }
                        for (int i = 0; i < n2; ++i) {
                            GameGiftGroup gameGiftGroup2 = new GameGiftGroup();
                            gameGiftGroup2.setType(1);
                            gameGiftGroup2.setGift(arrgiftGameGift[i]);
                            gameGiftGroup2.setGame(giftGame);
                            arrayList.add(gameGiftGroup2);
                        }
                        GameGiftGroup gameGiftGroup3 = new GameGiftGroup();
                        gameGiftGroup3.setType(2);
                        gameGiftGroup3.setGame(giftGame);
                        arrayList.add(gameGiftGroup3);
                    }
                    ++n;
                }
                return arrayList;
            }
        } catch (IOException var0_12) {
            var0_12.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        if (this.a.getActivity() == null) return;
        if (list != null) {
            if (list.size() > 0) {
                this.a.c();
                GameGiftFragment.a(this.a, list);
                GameGiftFragment.d(this.a).a(GameGiftFragment.b(this.a));
                GameGiftFragment.c(this.a);
                return;
            }
            this.a.d();
            return;
        }
        this.a.e();
    }
}
