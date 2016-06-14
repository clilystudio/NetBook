package com.clilystudio.netbook.util;

import android.content.Context;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.BookTopRoot;
import com.clilystudio.netbook.model.BookTopRoot$Favorite;

import java.io.IOException;

public final class s extends e<Void, Void, BookTopRoot> {
    private Context a;

    public s(Context context) {
        this.a = context;
    }

    private /* varargs */ BookTopRoot a() {
        try {
            BookTopRoot bookTopRoot = this.c().u();
            return bookTopRoot;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookTopRoot$Favorite bookTopRoot$Favorite;
        BookTopRoot bookTopRoot = (BookTopRoot) object;
        super.onPostExecute(bookTopRoot);
        if (bookTopRoot != null && (bookTopRoot$Favorite = bookTopRoot.getFavorite()) != null) {
            a.b(this.a, bookTopRoot$Favorite.getBookID(), bookTopRoot$Favorite.getTocID(), bookTopRoot$Favorite.getChecksum());
        }
    }
}
