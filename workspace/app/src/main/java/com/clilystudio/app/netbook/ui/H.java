package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.SearchResultRoot;

import java.util.List;

final class H extends e_BaseAsyncTask<String, Void, List<BookSummary>> {
    private H(AuthorBooksActivity paramAuthorBooksActivity) {
    }

    private List<BookSummary> a(String[] paramArrayOfString) {
        try {
            SearchResultRoot localSearchResultRoot = b.b().o(paramArrayOfString[0]);
            if (localSearchResultRoot != null) {
                List localList = localSearchResultRoot.getBooks();
                return localList;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.H
 * JD-Core Version:    0.6.2
 */