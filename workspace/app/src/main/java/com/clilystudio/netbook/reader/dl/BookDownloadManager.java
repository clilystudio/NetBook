package com.clilystudio.netbook.reader.dl;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.DownloadProgressEvent;
import com.clilystudio.netbook.event.DownloadStatusEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.util.TempUtil;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class BookDownloadManager {
    private Activity mActivity;

    public BookDownloadManager(Activity activity) {
        this.mActivity = activity;
    }

    public final void startDownload(BookReadRecord bookReadRecord) {
        this.startDownload(bookReadRecord, 0, 0);
    }

    public final void startDownload(String bookId, int start, int total) {
        this.startDownload(BookReadRecord.get(bookId), start, total);
    }

    private void startDownload(final BookReadRecord bookReadRecord, final int start, final int total) {
        if (bookReadRecord == null) {
            ToastUtil.showShortToast(this.mActivity, "请重试");
            return;
        }
        if (!TempUtil.isMounted()) {
            ToastUtil.showShortToast(this.mActivity, "无法缓存，请检查SD卡是否挂载");
            return;
        }
        if (TempUtil.isWebReadMode(bookReadRecord.getReadMode())) {
            ToastUtil.showLongToast(this.mActivity, "暂不支持当前模式缓存");
            return;
        }
        if (1 == TempUtil.getNetType(this.mActivity)) {
            this.startDownloadService(bookReadRecord, start, total);
            return;
        }
        new BaseDialog.Builder(this.mActivity).setTitle(R.string.zssq_tips).setMessage(R.string.chapter_dl_net_type_msg).setPositiveButton(R.string.chapter_dl, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                startDownloadService(bookReadRecord, start, total);
            }
        }).setNegativeButton(R.string.cancel, null).show();
    }

    private void startDownloadService(BookReadRecord bookReadRecord, int start, int total) {
        String string = bookReadRecord.getBookId();
        int mode = bookReadRecord.getReadMode();
        BusProvider.getInstance().post(new DownloadStatusEvent(string, 1));
        ToastUtil.showShortToast(this.mActivity,  "已加入缓存队列");
        MyApplication.getInstance().getBookDownloadList().add(string);
        start = Math.max(0,start);
        BookDlRecord bookDlRecord = BookDlRecord.get(string);
        if (bookDlRecord == null) {
            BookDlRecord.create(string, bookReadRecord.getTitle(), bookReadRecord.getAuthor(), bookReadRecord.getTocId(), mode, start, total, 1);
        } else if (bookDlRecord.getMode() != mode) {
            BookDlRecord.update(bookDlRecord, bookReadRecord.getTocId(), mode, start, total, 1);
        } else {
            BookDlRecord.reset(bookDlRecord, start, total);
        }
        BusProvider.getInstance().post(new DownloadProgressEvent());
        Intent intent = new Intent(this.mActivity, BookDownloadService.class);
        this.mActivity.startService(intent);
    }
}
