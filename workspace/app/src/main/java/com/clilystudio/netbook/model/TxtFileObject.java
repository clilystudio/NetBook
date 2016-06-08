package com.clilystudio.netbook.model;

import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.BookFile;

import java.util.Iterator;
import java.util.List;

public class TxtFileObject {
    public static boolean add(BookFile paramBookFile) {
        From localFrom = new Select().from(BookFile.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramBookFile.getName();
        if (!localFrom.where("name = ?", arrayOfObject).execute().isEmpty())
            return false;
        paramBookFile.save();
        return true;
    }

    public static void delete(BookFile paramBookFile) {
        From localFrom = new Delete().from(BookFile.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramBookFile.getFilePath();
        localFrom.where("file_path = ?", arrayOfObject).execute();
    }

    public static BookFile getProgress(String paramString) {
        Iterator localIterator = getTxtFiles().iterator();
        while (localIterator.hasNext()) {
            BookFile localBookFile = (BookFile) localIterator.next();
            if (localBookFile.filePath.equals(paramString))
                return localBookFile;
        }
        return null;
    }

    public static BookFile getTxtFile(String paramString) {
        List localList = new Select().from(BookFile.class).where("file_path = ?", new Object[]{paramString}).execute();
        if (!localList.isEmpty())
            return (BookFile) localList.get(0);
        return null;
    }

    public static List<BookFile> getTxtFiles() {
        return new Select().from(BookFile.class).execute();
    }

    public static void remove(BookFile paramBookFile) {
        From localFrom = new Delete().from(BookFile.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramBookFile.getName();
        localFrom.where("name = ?", arrayOfObject).execute();
    }

    public static void saveTxtFiles(List<BookFile> paramList) {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
            ((BookFile) localIterator.next()).save();
    }

    public static void updateProgress(BookFile paramBookFile) {
        BookFile localBookFile = getTxtFile(paramBookFile.getFilePath());
        if (localBookFile != null) {
            localBookFile.progress = paramBookFile.getProgress();
            localBookFile.setProgressChapterIndex(paramBookFile.getProgressChapterIndex());
            localBookFile.setProgressCharOffset(paramBookFile.getProgressCharOffset());
            localBookFile.save();
        }
    }
}

