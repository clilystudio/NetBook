package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.model.SyncUploadResult;

public final class BookSyncTask extends BaseAsyncTask<Void, Void, SyncUploadResult> {
    private final ApiService mApiService;
    private String mUserId;
    private String mToken;
    private String[] mBookIds;
    private BookSyncRecord.BookModifyType mBookModifyType;

    public BookSyncTask(String userId, String token, BookSyncRecord.BookModifyType bookModifyType, String... bookIds) {
        this.mUserId = userId;
        this.mToken = token;
        this.mBookModifyType = bookModifyType;
        this.mBookIds = bookIds;
        ApiServiceProvider.getInstance();
        this.mApiService = ApiServiceProvider.getApiService();
    }

    private String concatBookIds() {
        if (this.mBookIds == null || this.mBookIds.length == 0) {
            return "";
        }
        StringBuilder stringBuffer = new StringBuilder(this.mBookIds[0]);
        for (int i = 1; i < this.mBookIds.length; ++i) {
            stringBuffer.append(",").append(this.mBookIds[i]);
        }
        return stringBuffer.toString();
    }

    @Override
    protected final SyncUploadResult doInBackground(Void[] var1_1) {
        if (this.mBookModifyType == BookSyncRecord.BookModifyType.SHELF_ADD) {
            return this.mApiService.syncShelfAdd(this.mToken, concatBookIds());
        } else if (this.mBookModifyType == BookSyncRecord.BookModifyType.SHELF_REMOVE) {
            return this.mApiService.syncShelfRemove(this.mToken, concatBookIds());
        } else if (this.mBookModifyType == BookSyncRecord.BookModifyType.FEED_ADD) {
            return this.mApiService.syncShelfFeedAdd(this.mToken, concatBookIds());
        } else if (this.mBookModifyType == BookSyncRecord.BookModifyType.FEED_REMOVE) {
            return this.mApiService.syncShelfFeedRemove(this.mToken, concatBookIds());
        } else {
            return  null;
        }
    }

    @Override
    protected final void onPostExecute(SyncUploadResult syncUploadResult) {
        super.onPostExecute(syncUploadResult);
        if (syncUploadResult != null && syncUploadResult.isOk()) {
            for (String bookId : this.mBookIds) {
                BookSyncRecord.updateOrCreate(this.mUserId, bookId, BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.SYNC_SUCCESS));
            }
        }
    }
}
