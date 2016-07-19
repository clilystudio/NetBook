package com.clilystudio.netbook.model;

import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.BookFile;

import java.util.List;

public class TxtFileObject {
    public static boolean add(BookFile bookFile) {
        From from = new Select().from(BookFile.class);
        if (!from.where("name = ?", bookFile.getName()).execute().isEmpty()) {
            return false;
        }
        bookFile.save();
        return true;
    }

    public static void delete(BookFile bookFile) {
        From from = new Delete().from(BookFile.class);
        Object[] arrobject = new Object[]{bookFile.getFilePath()};
        from.where("file_path = ?", arrobject).execute();
    }

    public static BookFile getProgress(String string) {
        for (BookFile bookFile : TxtFileObject.getTxtFiles()) {
            if (!bookFile.filePath.equals(string)) continue;
            return bookFile;
        }
        return null;
    }

    public static BookFile getTxtFile(String string) {
        List list = new Select().from(BookFile.class).where("file_path = ?", string).execute();
        if (!list.isEmpty()) {
            return (BookFile) list.get(0);
        }
        return null;
    }

    public static List<BookFile> getTxtFiles() {
        return new Select().from(BookFile.class).execute();
    }

    public static void remove(BookFile bookFile) {
        From from = new Delete().from(BookFile.class);
        Object[] arrobject = new Object[]{bookFile.getName()};
        from.where("name = ?", arrobject).execute();
    }

    public static void saveTxtFiles(List<BookFile> list) {
        for (BookFile aList : list) {
            aList.save();
        }
    }

    public static void updateProgress(BookFile bookFile) {
        BookFile bookFile2 = TxtFileObject.getTxtFile(bookFile.getFilePath());
        if (bookFile2 != null) {
            bookFile2.progress = bookFile.getProgress();
            bookFile2.setProgressChapterIndex(bookFile.getProgressChapterIndex());
            bookFile2.setProgressCharOffset(bookFile.getProgressCharOffset());
            bookFile2.save();
        }
    }
}
